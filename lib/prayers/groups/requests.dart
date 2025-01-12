import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prayer_ml/prayers/groups/models/contact_model.dart';
import 'package:prayer_ml/prayers/groups/models/request_model.dart';
import 'package:prayer_ml/prayers/groups/repos/repo.dart';
import 'package:prayer_ml/prayers/groups/view_model.dart';
import 'package:prayer_ml/shared/widgets.dart';

class PrayerRequestConsumer extends ConsumerWidget {
  const PrayerRequestConsumer({super.key, required this.user});

  final Contact user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var viewModel = ref.watch(prayerRequestRepoProvider(user.id));
    return switch(viewModel) {
      AsyncData(:final value) => PrayerRequestView(viewModel: value),
      AsyncError(:final error, :final stackTrace) => PrintError(caller: "PrayerRequestConsumer", error: error, stackTrace: stackTrace),
      _ => const CircularProgressIndicator(),
    };
  }
}

class PrayerRequestView extends ConsumerWidget {
  const PrayerRequestView({super.key, required this.viewModel});

  final List<PrayerRequest> viewModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var theme = Theme.of(context);

    var user = const Contact(id: 0, name: "", createdAt: "");
    var contactGroup = const ContactGroupPairs(id: 0, contactId: 0, groupId: 0, createdAt: "");
    if (viewModel.map((request) => request.user).toSet().length == 1) {
      user = viewModel[0].user;
      contactGroup = viewModel[0].group;
    }


    return Scaffold(
      appBar: AppBar(
        title: Text(user.name),
      ),
      body: Column(
        children: [
          Expanded(child: PrayerRequests(viewModel: viewModel,)),
          ElevatedButton(
          onPressed: () => editPrayerRequestBottomSheet(context, ref, PrayerRequest(id: 0, request: "", user: user, group: contactGroup)),
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(theme.colorScheme.primary),
          ),
          child: Icon(Icons.add, color: theme.colorScheme.onPrimary),
        ),
        ],
      ),
    );
  }
}

class PrayerRequests extends StatelessWidget {
  const PrayerRequests({super.key, required this.viewModel});

  final List<PrayerRequest> viewModel;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: viewModel.length,
      itemBuilder: (context, index) => RequestCard(request: viewModel[index]),
    );
  }
}

class RequestCard extends ConsumerWidget {
  const RequestCard({super.key, required this.request});

  final PrayerRequest request;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      margin: const EdgeInsets.only(bottom: 10, top: 10),
      child: ListTile(
        leading: PopupMenuButton(
          itemBuilder:(context) => <PopupMenuEntry>[
            PopupMenuItem(
              child: ListTile(
                leading: const Icon(Icons.edit),
                title: const Text('Edit'),
                onTap: () {
                  Navigator.of(context).pop();
                  editPrayerRequestBottomSheet(context, ref, request);
                }
              ),
            ),
            PopupMenuItem(
              child: ListTile(
                leading: const Icon(Icons.delete),
                title: const Text('Delete'),
                onTap: () {
                  Navigator.of(context).pop();
                  ref.read(prayerRequestRepoProvider(request.user.id).notifier).removeRequest(request);
                } 
              ),
            ),
            const PopupMenuDivider(),
            PopupMenuItem(
              child: ListTile(
                leading: const Icon(Icons.cancel),
                title: const Text('Cancel'),
                onTap: () {
                  Navigator.of(context).pop();
                }
              ),
            ),
          ],
        ),
        title: Text(request.request),
        subtitle: Text(dateTimeToDate(request.createdAt)),
        trailing: sentimentIcon(request.sentiment),
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => RequestDashboard(request: request))
        ),
      ),
    );
  }
}

Icon sentimentIcon(String? sentiment) {
  switch (sentiment) {
    case 'positive':
      return const Icon(Icons.sentiment_satisfied);
    case 'negative':
      return const Icon(Icons.sentiment_dissatisfied);
    case 'neutral':
      return const Icon(Icons.sentiment_neutral);
    default:
      return const Icon(Icons.question_mark);
  }
}

Future<dynamic> editPrayerRequestBottomSheet(BuildContext context, WidgetRef ref, PrayerRequest request) {
  var newRequest = request.request;
  return showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Column(
        children: [
          const Text("Edit Prayer Request"),
          TextField(
            controller: TextEditingController(text: request.request),
            decoration: const InputDecoration(
              labelText: 'Prayer Request',
            ),
            onChanged: (value) => newRequest = value,
            maxLines: 5,
          ),
          InteractiveLoadButton(
            customProvider: () => ref.read(prayerRequestRepoProvider(request.user.id).notifier).saveRequest(request.copyWith(request: newRequest)),
            buttonText: 'Save',
            buttonStyle: saveButtonStyle,
            successCallback: () => Navigator.of(context).pop(),
          ),
        ],
      );
    },
  );
}

class RequestDashboard extends StatelessWidget {
  const RequestDashboard({super.key, required this.request});

  final PrayerRequest request;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var headerStyle = TextStyle(fontSize: 20, color: theme.colorScheme.onPrimaryContainer);
    return Column(
      children: <Widget> [
        AppBar(title: const Text("Request Dashboard")),
        Expanded(
          child: Accordion(
            scaleWhenAnimating: false,
            openAndCloseAnimation: true,
            headerBackgroundColor: theme.colorScheme.primaryContainer,
            scrollIntoViewOfItems: ScrollIntoViewOfItems.slow,
            headerPadding: const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
            maxOpenSections: 1,
            contentHorizontalPadding: 20,
            rightIcon: Icon(Icons.arrow_drop_down, color: theme.colorScheme.onPrimaryContainer),
            flipRightIconIfOpen: true,
            children: [
              AccordionSection(
                header: Text("Request Details", style: headerStyle),
                content: Column(
                  children: [
                    Text(request.request),
                    Text("Sentiment: ${request.sentiment}"),
                    Text("Created At: ${dateTimeToDate(request.createdAt)}"),
                  ],
                ),
              ),
              AccordionSection(
                isOpen: true,
                header: Text("Related Requests", style: headerStyle),
                content: SizedBox(height: 400, child: RelatedRequests(request: request)),
              ),
              AccordionSection(
                header: Text("Stats", style: headerStyle),
                content: const Placeholder(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class RelatedRequests extends ConsumerWidget {
  const RelatedRequests({super.key, required this.request});

  final PrayerRequest request;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var viewModel = ref.watch(fetchSimilarRequestsProvider(request.id));
    return switch(viewModel) {
      AsyncData(:final value) => SimplifiedPrayerRequests(requests: value),
      AsyncError(:final error, :final stackTrace) => PrintError(caller: "RelatedRequests", error: error, stackTrace: stackTrace),
      _ => const CircularProgressIndicator(),
    };
  }
}

class SimplifiedPrayerRequests extends StatelessWidget {
  const SimplifiedPrayerRequests({super.key, required this.requests});

  final List<PrayerRequestScore> requests;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: requests.length,
      itemBuilder: (context, index) => Card(
        child: ListTile(
          title: Text(requests[index].request),
          subtitle: Text(dateTimeToDate(requests[index].createdAt)),
          trailing: Text("${(requests[index].score * 100).toStringAsFixed(2)}%"),
        ),
      ),
    );
  }
}
import 'package:prayer_ml/api/firebase_auth_client.dart';
import 'package:prayer_ml/prayers/home/models/reminder_model.dart';
import 'dart:convert';

import 'package:prayer_ml/shared/config.dart';

class ReminderApiClient{
  final FirebaseAuthHttpClient authClient;
  final String baseUrl;

  ReminderApiClient({required this.authClient, required this.baseUrl});

  Future<List<ReminderGroups>> getReminderGroups() async {
    final response = await authClient.get(config.uri("/reminders/groups"));

    if (response.statusCode != 200) {
      throw Exception("Error getting reminder groups: ${response.statusCode} - ${response.body}");
    }
    
    final json = jsonDecode(response.body) as List;
    final nestedJson = json[0] as List;
    return nestedJson.map((group) => ReminderGroups.fromJson(group)).toList();
  }

  Future<List<RemindersForGroup>> getRemindersForGroup(int groupId, String type) async {
    final response = await authClient.post(config.uri("/reminders/group"), 
      body: jsonEncode({"group_id": groupId, "type": type}), headers: {"Content-Type": "application/json"});

    if (response.statusCode != 200) {
      throw Exception("Error getting reminders for group: ${response.statusCode} - ${response.body}");
    }

    final json = jsonDecode(response.body) as List;
    return json.map((group) => RemindersForGroup.fromJson(group)).toList();
  }

  Future<List<Reminder>> getReminderRecommendations() async {
    final response = await authClient.get(config.uri("/reminders/recommendations"));

    if (response.statusCode != 200) {
      throw Exception("Error getting reminder recommendations: ${response.statusCode} - ${response.body}");
    }

    final json = jsonDecode(response.body) as List;
    return json.map((group) => Reminder.fromJson(group)).toList();
  }

}

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:prayer_ml/prayers/groups/models/group_model.dart';
// import 'package:prayer_ml/prayers/groups/models/contact_model.dart';
import 'package:prayer_ml/prayers/groups/models/request_model.dart';
// import '../../shared/state_management.dart';

String dateTimeToDate(String dateTime) {
    var format = DateFormat('yMd');
    var date = DateTime.parse(dateTime).toLocal();
    return format.format(date);
  }

class GroupViewModel extends ChangeNotifier {
  final List<GroupContacts> _groups = [];

  List<GroupContacts> get groups {
    
   return _groups;
  }

  void addGroup(GroupContacts group) {
    _groups.add(group);
    notifyListeners();
  }

  void removeGroup(GroupContacts group) {
    _groups.remove(group);
    notifyListeners();
  }
}

class PrayerRequestViewModel extends ChangeNotifier {
  final List<PrayerRequest> _requests = [];

  List<PrayerRequest> get requests => _requests;

  void addRequest(PrayerRequest request) {
    _requests.add(request);
    notifyListeners();
  }

  void removeRequest(PrayerRequest request) {
    _requests.remove(request);
    notifyListeners();
  }
}
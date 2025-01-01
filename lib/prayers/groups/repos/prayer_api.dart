import 'package:http/http.dart' as http;
import 'package:prayer_ml/prayers/groups/models/contact_model.dart';
import 'dart:convert';

import 'package:prayer_ml/prayers/groups/models/group_model.dart';
import 'package:prayer_ml/prayers/groups/models/request_model.dart';
import 'package:prayer_ml/shared/config.dart';

class ContactsApiClient {
  final http.Client httpClient;
  final String baseUrl;

  ContactsApiClient({required this.httpClient, required this.baseUrl});

  Future<List<Contact>> fetchContacts() async {
    final response = await httpClient.get(config.uri("/contacts/"));

    if (response.statusCode != 200) {
      throw Exception("Error getting contacts: ${response.statusCode} - ${response.body}");
    }

    final json = jsonDecode(response.body) as List;
    return json.map((contact) => Contact.fromJson(contact)).toList();
  }

  Future<List<Group>> fetchGroups() async {
    final response = await httpClient.get(config.uri("/contacts/groups"));

    if (response.statusCode != 200) {
      throw Exception("Error getting groups: ${response.statusCode} - ${response.body}");
    }

    final json = jsonDecode(response.body) as List;
    return json.map((group) => Group.fromJson(group)).toList();
  }

  Future<List<ContactGroupPairs>> fetchContactGroupPairs() async {
    final response = await httpClient.get(config.uri("/contacts/contact_groups"));

    if (response.statusCode != 200) {
      throw Exception("Error getting contact group pairs: ${response.statusCode} - ${response.body}");
    }

    final json = jsonDecode(response.body) as List;
    return json.map((group) => ContactGroupPairs.fromJson(group)).toList();
  }
}

class PrayerRequestApiClient {
  final http.Client httpClient;
  final String baseUrl;

  PrayerRequestApiClient({required this.httpClient, required this.baseUrl});

  Future<List<PrayerRequest>> fetchPrayerRequests(int contactId) async {
    final response = await httpClient.get(config.uri("/prayer_requests/contact/$contactId"));

    if (response.statusCode != 200) {
      throw Exception("Error getting prayer requests: ${response.statusCode} - ${response.body}");
    }

    final json = jsonDecode(response.body) as List;
    return json.map((request) => PrayerRequest.fromJson(request)).toList();
  }
}
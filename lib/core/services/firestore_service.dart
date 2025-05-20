import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruits_app/core/services/database_service.dart';

class FirestoreService implements DatabaseService {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  @override
  Future<void> addData(
      {required String path,
      required Map<String, dynamic> data,
      String? docId}) async {
    if (docId != null) {
      firebaseFirestore.collection(path).doc(docId).set(data);
    } else {
      await firebaseFirestore.collection(path).add(data);
    }
  }

  @override
  Future<dynamic> getData({required String path, String? docId, Map<String, dynamic>? query}) async {
    if (docId != null) {
      var data = await firebaseFirestore.collection(path).doc(docId).get();
      return data.data() as Map<String, dynamic>;
    } else {
     Query<Map<String, dynamic>> data = firebaseFirestore.collection(path);
      if (query != null) {
        if (query['orderBy'] != null) {
          var orderByField = query['orderBy'];
          var descending = query['descending'];
          data = data.orderBy(orderByField, descending: descending);
        }
        if (query['limit'] != null) {
          var limit = query['limit'];
          data = data.limit(limit);
        }

      }
      var result = await data.get();
      return result.docs.map((e) => e.data()).toList();
    }
  }

  @override
  Future<bool> checkIfDataExists(
      {required String path, required String docuementId}) async {
    var data = await firebaseFirestore.collection(path).doc(docuementId).get();
    return data.exists;
  }
}

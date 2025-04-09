import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruits_app/core/services/database_service.dart';

class FirestoreService implements DatabaseService {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  @override
  Future<void> addData(
      {required String path, required Map<String, dynamic> data}) async {
    await firebaseFirestore.collection(path).add(data);
  }
}

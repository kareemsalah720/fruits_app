import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruits_app/core/services/database_service.dart';

class FirestoreService implements DatabaseService {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  @override
  Future<void> addData(
      {required String path, required Map<String, dynamic> data}) async {
    await firebaseFirestore.collection(path).add(data);
  }

  @override
  Future<Map<String, dynamic>> getData(
      {required String path, required String docId}) async {
    var data = await firebaseFirestore.collection(path).doc(docId).get();
    return data.data() as Map<String, dynamic>;
  }
}

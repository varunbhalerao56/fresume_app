import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fresume_app/global/models/pdf_model.dart';

const USER_COLLECTION = 'user';
const RESUME_COLLECTION = 'resume';

class PdfModelApi {
  final String uid;
  final FirebaseFirestore firestore;

  PdfModelApi(this.uid, this.firestore);

  Future<bool> updatePdfModel(String id, PdfModel data) async {
    try {
      await firestore.collection(USER_COLLECTION).doc(uid).collection(RESUME_COLLECTION).doc(id).update(data.toJson());
      return true;
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> deletePdfModel(String id) async {
    try {
      await firestore.collection(USER_COLLECTION).doc(uid).collection(RESUME_COLLECTION).doc(id).delete();

      return true;
    } catch (e) {
      rethrow;
    }
  }

  Future<PdfModel> getSinglePdf(String id) async {
    try {
      final snapshot = await firestore.collection(USER_COLLECTION).doc(uid).collection(RESUME_COLLECTION).doc(id).get();

      return PdfModel.fromJson(snapshot.data()!);
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> setPdfModel(String id, PdfModel data) async {
    try {
      await firestore
          .collection(USER_COLLECTION)
          .doc(uid)
          .collection(RESUME_COLLECTION)
          .doc(id)
          .set(data.toJson(), SetOptions(merge: true));
      return true;
    } catch (e) {
      rethrow;
    }
  }

  Future<List<PdfModel>> retrievePdfModel() async {
    try {
      final snapshot = await firestore.collection(USER_COLLECTION).doc(uid).collection(RESUME_COLLECTION).get();

      return snapshot.docs.map((data) {
        return PdfModel.fromJson(data.data());
      }).toList();
    } catch (e) {
      rethrow;
    }
  }

  Stream<List<PdfModel>> retrievePdfModelTwo() {
    try {
      final query = firestore.collection(USER_COLLECTION).doc(uid).collection(RESUME_COLLECTION);

      return query.snapshots().map((snapshot) {
        return snapshot.docs.map((doc) => PdfModel.fromJson(doc.data())).toList();
      });
    } catch (e) {
      rethrow;
    }
  }
}

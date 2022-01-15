import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fresume_app/apis/auth.dart';
import 'package:fresume_app/apis/resume.dart';
import 'package:fresume_app/global/models/pdf_model.dart';

final resumeController = StateNotifierProvider.family<UserResumeList, AsyncValue<List<PdfModel>>, String>((ref, uid) {
  return UserResumeList(ref.read, uid);
});

class UserResumeList extends StateNotifier<AsyncValue<List<PdfModel>>> {
  final String uid;
  UserResumeList(this.read, this.uid) : super(const AsyncLoading()) {
    _getResume();
  }

  final Reader read;

  Future<void> _getResume() async {
    try {
      final List<PdfModel> pdfModels = await PdfModelApi(uid, read(firebaseFirestoreProvider)).retrievePdfModel();
      state = AsyncData(pdfModels);
    } catch (e, st) {
      throw AsyncError<Exception>(e, stackTrace: st);
    }
  }

  Future<bool> addToResume({required PdfModel pdfModel}) async {
    try {
      await PdfModelApi(uid, read(firebaseFirestoreProvider)).setPdfModel(pdfModel.pdfId, pdfModel);
      final List<PdfModel> pdfModels = await PdfModelApi(uid, read(firebaseFirestoreProvider)).retrievePdfModel();
      state = AsyncData(pdfModels);
      return true;
    } catch (e, st) {
      throw AsyncError<Exception>(e, stackTrace: st);
    }
  }

  Future<bool> deleteFromResume({required PdfModel pdfModel}) async {
    try {
      await PdfModelApi(uid, read(firebaseFirestoreProvider)).deletePdfModel(pdfModel.pdfId);
      final List<PdfModel> pdfModels = await PdfModelApi(uid, read(firebaseFirestoreProvider)).retrievePdfModel();
      state = AsyncData(pdfModels);
      return true;
    } catch (e, st) {
      throw AsyncError<Exception>(e, stackTrace: st);
    }
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fresume_app/apis/resume.dart';

final firebaseFirestoreProvider = Provider<FirebaseFirestore>((ref) => FirebaseFirestore.instance);

///[authApiProvider] An instance of the [AuthApi] class which contains the functions of user authentication with firebase
final authApiProvider = Provider<AuthApi>((ref) {
  AuthApi authApi = AuthApi();
  return authApi;
});

///[authStateChangeProvider] Streams the current user if there is any,
///this can also be used to check if the user value is null or the user is signed in
final authStateChangeProvider = StreamProvider<User?>((ref) {
  AuthApi authApi = ref.watch(authApiProvider);
  return authApi.authChanges();
});

final firebaseChangeProvider = StreamProvider<DocumentSnapshot<Map<String, dynamic>>>((ref) {
  var authApi = ref.watch(authStateChangeProvider);
  var _firebaseFirestoreProvider = ref.watch(firebaseFirestoreProvider);
  return _firebaseFirestoreProvider.collection(USER_COLLECTION).doc(authApi.asData!.value!.uid).snapshots();
});
/*


The reason for having authentication with both firebase and the NP API is because firebase auth provides
great security and it makes it easier to link up firestore to a single user. Along with that user state management
becomes vastly easier to implement as firebase already has all the needed functions to do that.
*/

///[AuthApi] this auth service deals with the firebase side of authentication.
class AuthApi {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  ///[authChanges] streams the user change and is essential in keeping check if the user is logged in or not
  Stream<User?> authChanges() {
    return firebaseAuth.authStateChanges();
  }

  ///[signOut] the user is signed out from the application
  Future<void> signOut() async {
    try {
      await firebaseAuth.signOut();
    } catch (e) {
      throw UnimplementedError(e.toString());
    }
  }
}

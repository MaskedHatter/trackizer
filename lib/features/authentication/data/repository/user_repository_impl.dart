import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:trackizer/core/resources/data_state.dart';
import 'package:trackizer/features/authentication/data/application/firebase_service.dart';
import 'package:trackizer/features/authentication/data/model/user_model.dart';
import 'package:trackizer/features/authentication/domain/repository/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final FirebaseService _firebaseService;

  UserRepositoryImpl(this._firebaseService);

  @override
  Future<DataState<UserModel>> authenticateWithGoogle() async {
    GoogleSignInAccount? user = await _firebaseService.signUpWithGoogle();

    if (user != null) {
      final GoogleSignInAuthentication googleSignInAuth =
          await user.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuth.accessToken,
        idToken: googleSignInAuth.idToken,
      );

      await FirebaseAuth.instance.signInWithCredential(credential);

      UserModel currentUser = UserModel.fromGoogleSignIn(user);

      return DataSuccess(data: currentUser);
    } else {
      return const DataFailed(error: null);
    }
  }

  @override
  Future<DataState<UserModel>> authenticateWithEmail(
      {required String email, required String password}) async {

    User? user = await _firebaseService.signUpWithEmail(
        email: email, password: password);
        
    if (user != null) {
      UserModel currentUser = UserModel.fromFirebaseAuth(user);
      return DataSuccess(data: currentUser);
    } else {
      return const DataFailed(error: null);
    }
  }
}

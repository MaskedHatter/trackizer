import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:trackizer/core/resources/data_state.dart';
import 'package:trackizer/features/authentication/data/model/user_model.dart';

class FirebaseService {
  final FirebaseAuth _fireAuthInstance;
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [],
  );
  
  FirebaseService(this._fireAuthInstance);
  
  Future<GoogleSignInAccount?> signUpWithGoogle() async {
    GoogleSignInAccount? user = await _googleSignIn.signIn();
    return user;
    
  }

  Future<User?> signUpWithEmail(
      {required String email, required String password}) async {
    User? user = (await _fireAuthInstance.createUserWithEmailAndPassword(
            email: email, password: password))
        .user;
    return user;
    
  }

  DataState<UserModel> getCurrentUser() {
    final user = _fireAuthInstance.currentUser;
    if (user != null) {
      UserModel currentUser = UserModel.fromFirebaseAuth(user);
      return DataSuccess(data: currentUser);
    } else {
      return const DataFailed(error: null);
    }
  }

  void getU() {
    final user = _fireAuthInstance.currentUser;
    log(user.toString());
  }
}

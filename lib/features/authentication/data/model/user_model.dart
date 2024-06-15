import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:trackizer/features/authentication/domain/entities/user_entity.dart';

class UserModel extends UserEntity {

  const UserModel({
    super.name,
    super.email,
    super.profilePic
  });

  factory UserModel.fromFirebaseAuth(User user) {
    return UserModel(
      name: user.displayName,
      email: user.email,
      profilePic: user.photoURL
    );
  }

  factory UserModel.fromGoogleSignIn(GoogleSignInAccount user) {
    return UserModel(
      name: user.displayName,
      email: user.email,
      profilePic: user.photoUrl
    );
  }

}
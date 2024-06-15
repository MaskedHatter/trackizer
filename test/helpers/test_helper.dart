import 'package:firebase_auth/firebase_auth.dart';
import 'package:mockito/annotations.dart';
import 'package:trackizer/features/authentication/domain/repository/user_repository.dart';

@GenerateMocks([UserRepository],
    //customMocks: [MockSpec<FirebaseAuth>(as: #MockFirebaseAuth)]
    )
void main() {}

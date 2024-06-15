import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:trackizer/features/authentication/data/application/firebase_service.dart';
import 'package:trackizer/features/authentication/data/repository/user_repository_impl.dart';
import 'package:trackizer/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final fire = FirebaseAuth.instance;
  await fire.useAuthEmulator('localhost', 9099);
  late FirebaseService fireService;
  late UserRepositoryImpl userRepository;

  setUpAll(() {
    fireService = FirebaseService(fire);
    userRepository = UserRepositoryImpl(fireService);
  });

  group('Test Firebase Authentications', () {
    test('Runs authentication with google', () async {
      final result = userRepository.authenticateWithGoogle();
      
    });
  });
}

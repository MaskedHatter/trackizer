
import "package:firebase_auth/firebase_auth.dart";

import "package:get_it/get_it.dart";
import "package:trackizer/features/authentication/data/application/firebase_service.dart";
import "package:trackizer/features/authentication/data/repository/user_repository_impl.dart";
import "package:trackizer/features/authentication/domain/repository/user_repository.dart";
import "package:trackizer/features/authentication/domain/usecase/authenticate_email_usecase.dart";
import "package:trackizer/features/authentication/domain/usecase/authenticate_google_usecase.dart";

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  
  sl.registerSingleton<FirebaseAuth>(FirebaseAuth.instance);

  sl.registerSingleton<FirebaseService>(FirebaseService(sl()));

  sl.registerSingleton<UserRepository>(UserRepositoryImpl(sl()));

  sl.registerSingleton<AuthenticateGoogleUseCase>(AuthenticateGoogleUseCase(sl()));

  sl.registerSingleton<AuthenticateEmailUseCase>(AuthenticateEmailUseCase(sl()));
}

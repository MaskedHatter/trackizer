import 'package:equatable/equatable.dart';

class UserEntity extends Equatable{
  final String ? name;
  final String ? email;
  final String ? profilePic;

  const UserEntity({this.name, this.email, this.profilePic});

  @override
  List<Object?> get props => [name, email, profilePic];
}
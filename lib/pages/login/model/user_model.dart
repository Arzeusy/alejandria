import 'package:objectbox/objectbox.dart';

@Entity()
class User {
  @Id()
  int id;
  String userName;
  String email;
  String authToken;

  User(this.userName, this.email, {this.id = 0, this.authToken = ''});
}

@Entity()
class Profile {
  @Id()
  int id;
  String? picture;
  bool emailVerified;

  Profile(this.picture, this.emailVerified, {this.id = 0});
  final user = ToOne<User>();
}

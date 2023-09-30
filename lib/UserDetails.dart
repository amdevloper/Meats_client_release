import 'package:objectbox/objectbox.dart';

@Entity()
class UserDetails {
  @Id()
  int id;
  String userName;
  String userSurName;

  UserDetails({
    this.id = 0,
    this.userName = '',
    this.userSurName = '',
});
}
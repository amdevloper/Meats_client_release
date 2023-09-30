import 'package:objectbox/objectbox.dart';

@Entity()
class MainModel {
  @Id()
  int id;
  String mainId;
  String token;
  String userName;
  String userEmail;

  MainModel({
  this.id = 0,
  this.mainId = '',
  this.token = '',
  this.userName = '',
  this.userEmail = ''
});
}
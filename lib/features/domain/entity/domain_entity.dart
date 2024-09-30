import 'package:equatable/equatable.dart';

class ApiMode extends Equatable {
  int ?id;
  String? email;
  String? firstName;
  String? lastName;
  String? avatar;

  ApiMode({
     this.id,
     this.email,
     this.firstName,
     this.lastName,
     this.avatar,
  });
@override
  List<Object? > get props => [
   id,
   email,
   firstName,
   lastName,
   avatar,
];
}
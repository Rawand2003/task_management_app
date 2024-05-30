// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class signupModel {
  String firstName;
  String lastName;
  String email;
  String password;
  String role = "USER";
  signupModel({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.role,
  });


  signupModel copyWith({
    String? firstName,
    String? lastName,
    String? email,
    String? password,
    String? role,
  }) {
    return signupModel(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      password: password ?? this.password,
      role: role ?? this.role,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'password': password,
      'role': role,
    };
  }

  factory signupModel.fromMap(Map<String, dynamic> map) {
    return signupModel(
      firstName: map['firstName'] as String,
      lastName: map['lastName'] as String,
      email: map['email'] as String,
      password: map['password'] as String,
      role: map['role'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory signupModel.fromJson(String source) => signupModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'signupModel(firstName: $firstName, lastName: $lastName, email: $email, password: $password, role: $role)';
  }

  @override
  bool operator ==(covariant signupModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.firstName == firstName &&
      other.lastName == lastName &&
      other.email == email &&
      other.password == password &&
      other.role == role;
  }

  @override
  int get hashCode {
    return firstName.hashCode ^
      lastName.hashCode ^
      email.hashCode ^
      password.hashCode ^
      role.hashCode;
  }
}

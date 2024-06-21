import 'package:equatable/equatable.dart';

class Clinic extends Equatable {

  final String id;   //clinic ID
  final String name;  // clinic name
  final String description; // clinic description
  final String imageUrl; // clinic image

  // constructor to initialize clinic object
  const Clinic({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
  });

  // This is a factory constructor named 'fromJson'. It creates an instance of 'clinic' from a JSON map
  // The constructor basically takes a JSON map (Map<String, dynamic> json') and an optional 'id'
  factory Clinic.fromJson(Map<String, dynamic> json, {String? id}) {

    // Initializing 'clinic' object with values from the JSON map
    return Clinic(
      id: id ?? json['id'] ?? '',
      name: json['name'] ?? '',
      description: json['description'] ?? '',
      imageUrl: json['imageUrl'] ?? '',
    );
  }

  // Here we are returning a list of properties that is used to check whether the two instance of clinic are equal or not
  @override
  List<Object?> get props => [id, name, description, imageUrl];
}
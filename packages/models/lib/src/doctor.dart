import 'package:equatable/equatable.dart';

import 'doctor_address.dart';
import 'doctor_category.dart';
import 'doctor_package.dart';
import 'doctor_working_hours.dart';

class Doctor extends Equatable {
  final String id;
  final String name;
  final String bio;
  final String profileImageUrl;
  final DoctorCategory category;
  final DoctorAddress address;
  final List<DoctorPackage> packages;
  final List<DoctorWorkingHours> workingHours;
  final double rating;
  final int reviewCount;
  final int patientCount;

  const Doctor({
    required this.id,
    required this.name,
    required this.bio,
    required this.profileImageUrl,
    required this.workingHours,
    required this.category,
    required this.address,
    required this.packages,
    this.rating = 0.0,
    this.reviewCount = 0,
    this.patientCount = 0,
  });

  @override
  List<Object?> get props => [
    id,
    name,
    bio,
    profileImageUrl,
    workingHours,
    category,
    address,
    packages,
    rating,
    reviewCount,
    patientCount,
  ];

  static final sampleDoctors = [
    Doctor(
      id: '1',
      name: 'Dr. Momina Abid',
      bio:
      'Dr. Momina Abid is a cardiologist in Lahore, Lahore and is affiliated with multiple hospitals in the area, including National Hospital and Cardiology Hospitals. She received her medical degree from University of Medical and Dental Sciences and has been in practice between 11-20 years. She is one of 102 doctors at National Hospital and one of 102 at Cardiology Hospital who specialize in Cardiovascular Disease.',
      profileImageUrl:
      'https://images.unsplash.com/photo-1557683316-973673baf926',
      category: DoctorCategory.familyMedicine,
      address: DoctorAddress.sampleAddresses[0],
      packages: DoctorPackage.samplePackages,
      workingHours: DoctorWorkingHours.sampleDoctorWorkingHours,
      rating: 4.5,
      reviewCount: 100,
      patientCount: 1000,
    ),
    Doctor(
      id: '2',
      name: 'Dr. Kinza Khalid',
      bio: 'Dr. Kinza Khalid is a dentist in Karachi, Pakistan and is affiliated with multiple dental clinics in the area. She received her dental degree from University of Dental Sciences and has been in practice for over 10 years. ',
      profileImageUrl:
      'https://images.unsplash.com/photo-1557683316-973673baf926',
      category: DoctorCategory.generalSurgery,
      address: DoctorAddress.sampleAddresses[0],
      packages: DoctorPackage.samplePackages,
      workingHours: DoctorWorkingHours.sampleDoctorWorkingHours,
      rating: 4.5,
      reviewCount: 100,
      patientCount: 1000,
    ),
  ];
}
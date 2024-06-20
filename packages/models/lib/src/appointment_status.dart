import 'package:flutter/material.dart';

// Defining an enum ( way to define set of named values) called AppointmentStatus
enum AppointmentStatus {
  //these are the possible status for an appointment
  pending(name: 'Pending', icon: Icons.pending),
  accepted(name: 'Accepted', icon: Icons.check),
  rejected(name: 'Rejected', icon: Icons.close),
  completed(name: 'Completed', icon: Icons.verified),
  cancelled(name: 'Cancelled', icon: Icons.cancel);

  // Every status has two properties its name and icon
  final String name;
  final IconData icon;

  // the constructor for Appointment status with required keyword ensures that the name and icon are provided when creating enum value
  const AppointmentStatus({
    required this.name,
    required this.icon,
  });
}
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:models/models.dart';
import 'appointment_status.dart';


class Appointment extends Equatable {

  final String id;    // appointment ID
  final Doctor doctor;   // appointment booked for a particular doctor
  final DateTime date;  // appointment date
  final TimeOfDay time;  // appointment time
  final String? reason; // appointment reason ( optional )
  final AppointmentStatus? status;  // appointment status ( optional)

  // Initializing Appointment constructor
  const Appointment({
    required this.id,
    required this.doctor,
    required this.date,
    required this.time,
    required this.reason,
    this.status,
  });

  @override
  // The getter is used to return the list of properties which will be used to compare two appointment ojects
  //if the two appointment objects have all properties same then it will be considered equal
  List<Object?> get props => [
    id,
    doctor,
    date,
    time,
    reason,
    status,
  ];
}
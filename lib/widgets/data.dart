import 'package:flutter/material.dart';

class MedicalData {
  final String medicaltype;

  MedicalData({required this.medicaltype});
  
}

 List<MedicalData> items =[
   MedicalData(medicaltype: 'Tablet'),
   MedicalData(medicaltype: 'IV Ofinix '),
   MedicalData(medicaltype: 'Ointment'),
   MedicalData(medicaltype: 'Tablet'),
   MedicalData(medicaltype: 'Tablet'),
 ];
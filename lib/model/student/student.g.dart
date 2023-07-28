// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Student _$$_StudentFromJson(Map<String, dynamic> json) => _$_Student(
      id: json['id'] as int?,
      studentName: json['student_name'] as String?,
      address: json['address'] as String?,
      dateOfBirth: json['date_of_birth'] as String?,
    );

Map<String, dynamic> _$$_StudentToJson(_$_Student instance) =>
    <String, dynamic>{
      'id': instance.id,
      'student_name': instance.studentName,
      'address': instance.address,
      'date_of_birth': instance.dateOfBirth,
    };

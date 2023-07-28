import 'package:freezed_annotation/freezed_annotation.dart';

part 'student.freezed.dart';
part 'student.g.dart';

@freezed
class Student with _$Student {
  factory Student({
    int? id,
    @JsonKey(name: 'student_name') String? studentName,
    String? address,
    @JsonKey(name: 'date_of_birth') String? dateOfBirth,
  }) = _Student;

  factory Student.fromJson(Map<String, dynamic> json) =>
      _$StudentFromJson(json);
}

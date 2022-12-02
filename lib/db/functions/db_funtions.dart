import 'package:flutter/cupertino.dart';
import 'package:gracia/db/functions/model/dart_model.dart';

ValueNotifier<
List<StudentModel>> StudentList = ValueNotifier([]);
void addStudent(StudentModel value){
  StudentList.value.add(value);
}
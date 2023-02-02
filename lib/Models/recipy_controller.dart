import 'package:cook_fast/Models/recipy_chossing.dart';
import 'package:get/get.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';


class AppDataController extends GetxController {
  List<SubjectModel> subjectData = [];
  List<MultiSelectItem> dropDownData = [];

  getSubjectData() {
    subjectData.clear();
    dropDownData.clear();

    Map<String, dynamic> apiResponse = {
      "code": 200,
      "message": "Course subject lists.",
      "data": [
        {"subject_id": "1", "subject_name": "Tomato"},
        {"subject_id": "2", "subject_name": "Bell Paper"},
        {"subject_id": "3", "subject_name": "Broccoli"},
        {"subject_id": "4", "subject_name": "cabbage"},
        {"subject_id": "5", "subject_name": "carrot"},
        {"subject_id": "6", "subject_name": "Cauliflower"},
        {"subject_id": "7", "subject_name": "Chikpeas"},
        {"subject_id": "8", "subject_name": "Cucumber"},
        {"subject_id": "9", "subject_name": "Edamame"},
        {"subject_id": "10", "subject_name": "Eggplant"},
        {"subject_id": "11", "subject_name": "Garlic"},
        {"subject_id": "12", "subject_name": "Kidney beans"},
        {"subject_id": "13", "subject_name": "mushroom"},
        {"subject_id": "14", "subject_name": "Olive Oil"},
        {"subject_id": "15", "subject_name": "Onion"},
        {"subject_id": "16", "subject_name": "potato"},
        {"subject_id": "17", "subject_name": "quinaa"},
        {"subject_id": "18", "subject_name": "white rice"},
        {"subject_id": "19", "subject_name": "Say sauce"},
        {"subject_id": "20", "subject_name": "Spinach"},
        {"subject_id": "21", "subject_name": "sweet potato"},
        {"subject_id": "22", "subject_name": "Tofu"},
        {"subject_id": "23", "subject_name": "Zucchini"},
        {"subject_id": "24", "subject_name": "Red lentils"},
      ]
    };

    if (apiResponse['code'] == 200) {
      List<SubjectModel> tempSubjectData = [];
      apiResponse['data'].forEach(
        (data) {
          tempSubjectData.add(
            SubjectModel(
              subjectId: data['subject_id'],
              subjectName: data['subject_name'],
            ),
          );
        },
      );
      print(tempSubjectData);
      subjectData.addAll(tempSubjectData);

      dropDownData = subjectData.map((subjectdata) {
        return MultiSelectItem(subjectdata, subjectdata.subjectName);
      }).toList();

      update();
    } else if (apiResponse['code'] == 400) {
      print("Show Error model why error occurred..");
    } else {
      print("show some error model like something went worng..");
    }
  }
}

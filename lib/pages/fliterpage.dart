import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';

import '../Models/recipy_chossing.dart';
import '../Models/recipy_controller.dart';

class filter extends StatelessWidget {
  filter({Key? key}) : super(key: key);

  final AppDataController controller = Get.put(AppDataController());

  @override
  Widget build(BuildContext context) {
    List subjectData = [];

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      controller.getSubjectData();
    });

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Things that you have"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Image(image: AssetImage('assets/images/err.png')),
            SizedBox(height: 40,),
            GetBuilder<AppDataController>(builder: (controller) {
              return Padding(
                padding: const EdgeInsets.only(right: 30,left: 30),
                child: MultiSelectDialogField(

                  items: controller.dropDownData,
                  title: const Text(
                    "Pick Ingredients",
                    style: TextStyle(color: Colors.black),
                  ),
                  selectedColor: Colors.black,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  buttonIcon: const Icon(
                    Icons.arrow_drop_down,
                    color: Colors.blue,
                  ),
                  buttonText: const Text(
                    "Pick Ingredients",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  onConfirm: (results) {
                    subjectData = [];
                    for (var i = 0; i < results.length; i++) {
                      SubjectModel data = results[i] as SubjectModel;
                      print(data.subjectId);
                      print(data.subjectName);
                      subjectData.add(data.subjectId);
                    }
                    print("data $subjectData");

                    //_selectedAnimals = results;
                  },
                ),
              );
            }),
            SizedBox(height: 20,),
            OutlinedButton(
              child: Text(
                "Find Dynamic Recipy",
                style: TextStyle(
                  color: Colors.green,
                ),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

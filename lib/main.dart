import 'package:first_flutter_android_project/carousal_slider/card_.dart';
import 'package:first_flutter_android_project/carousal_slider/image_slider.dart';
import 'package:first_flutter_android_project/cloning/cloning_example_1.dart';
import 'package:first_flutter_android_project/geolocator_package/location.dart';
import 'package:first_flutter_android_project/gesture_detector/blub_on_off_example.dart';
import 'package:first_flutter_android_project/pick_image/home.dart';
import 'package:first_flutter_android_project/whatsapp/colors.dart';
import 'package:first_flutter_android_project/widgets/alert_dialogue.dart';
import 'package:first_flutter_android_project/widgets/animated_text.dart';
import 'package:first_flutter_android_project/widgets/bottom_navigation_bar.dart';
import 'package:first_flutter_android_project/widgets/bottom_sheet_widget.dart';
import 'package:first_flutter_android_project/widgets/callback_function.dart';
import 'package:first_flutter_android_project/widgets/constraint_box.dart';
import 'package:first_flutter_android_project/widgets/custom_widget/custom_widget.dart';
import 'package:first_flutter_android_project/widgets/dismissible.dart';
import 'package:first_flutter_android_project/widgets/drawer.dart';
import 'package:first_flutter_android_project/widgets/dropdown_list.dart';
import 'package:first_flutter_android_project/widgets/expanded.dart';
import 'package:first_flutter_android_project/widgets/forms.dart';
import 'package:first_flutter_android_project/widgets/image.dart';
import 'package:first_flutter_android_project/widgets/myhomepage.dart';
import 'package:first_flutter_android_project/widgets/passingData/passing_data_from_one_to_another_screen.dart';
import 'package:first_flutter_android_project/widgets/passingData/secondScreen.dart';
import 'package:first_flutter_android_project/widgets/positioned_layout.dart';
import 'package:first_flutter_android_project/widgets/range_slider.dart';
import 'package:first_flutter_android_project/widgets/screen/intro_screen.dart';
import 'package:first_flutter_android_project/widgets/splash_screen.dart';
import 'package:first_flutter_android_project/widgets/stack_widget.dart';
import 'package:first_flutter_android_project/widgets/tabbar.dart';
import 'package:first_flutter_android_project/widgets/updating_correctly_with_stateful_widget.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

/*

types of Widgets :
1. Stateless Widget
2. Stateful Widget

State

1. Material Design
2. Cupertino Design

every Widget has a BuildContext and this is used to find the location of a widget in a widgetTree

*/


class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.purple
      ),
      home: const BlubOnOff()
    );

  }

}

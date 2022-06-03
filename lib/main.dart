import 'package:commerce/controllers/popular_product_controller.dart';
import 'package:commerce/models/popular_product_model.dart';
import 'package:commerce/pages/food/popular_food_details.dart';
import 'package:commerce/pages/food/recommended_food_details.dart';
import 'package:commerce/pages/home/main_food_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainFoodPage(),
      // home: const PopularFoodDetial(),
      // home: const RecommendedFoodDetails(),
    );
  }
}

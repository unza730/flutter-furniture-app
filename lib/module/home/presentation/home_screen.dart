import 'package:flutter/material.dart';
import 'package:furnitureui/module/home/presentation/widget/popular_furniture_widget.dart';
import 'package:furnitureui/module/home/presentation/widget/promotion_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      padding: MediaQuery.of(context).padding,
      child: Column(
        children: const [PromotionWidget()],
      ),
    ));
  }
}

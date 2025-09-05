import 'package:flutter/material.dart';
import 'package:store_app/widgets/custom_button.dart';
import 'package:store_app/widgets/custom_text_field.dart';

class UpdateProductPage extends StatelessWidget {
  const UpdateProductPage({super.key});

  static String id = 'UpdateProductPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Update Product',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 35),
            CustomTextField(hintText: 'Product Name'),
            const SizedBox(height: 15),
            CustomTextField(hintText: 'Price'),
            const SizedBox(height: 15),
            CustomTextField(hintText: 'Description'),
            const SizedBox(height: 15),
            CustomTextField(hintText: 'Image'),
            const SizedBox(height: 65),
            CustomButton(text: 'Update'),

          ],
        ),
      ),
    );
  }
}

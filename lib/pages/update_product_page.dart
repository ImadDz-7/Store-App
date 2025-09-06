import 'package:flutter/material.dart';
import 'package:store_app/widgets/custom_button.dart';
import 'package:store_app/widgets/custom_text_field.dart';

class UpdateProductPage extends StatelessWidget {
  UpdateProductPage({super.key});

  String? productName, price, description, image;

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
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 35),
              CustomTextField(
                hintText: 'Product Name',
                onChanged: (data) {
                  productName = data;
                },
              ),
              const SizedBox(height: 15),
              CustomTextField(
                hintText: 'Price',
                inputType: TextInputType.number,
                onChanged: (data) {
                  price = data;
                },

              ),
              const SizedBox(height: 15),
              CustomTextField(
                hintText: 'Description',
                onChanged: (data) {
                  description = data;
                },
              ),
              const SizedBox(height: 15),
              CustomTextField(
                hintText: 'Image',
                onChanged: (data) {
                  image = data;
                },
              ),
              const SizedBox(height: 65),
              CustomButton(
                text: 'Update',
                onTap: () {
                  
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

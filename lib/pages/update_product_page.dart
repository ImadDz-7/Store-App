import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/update_product_service.dart';
import 'package:store_app/widgets/custom_button.dart';
import 'package:store_app/widgets/custom_text_field.dart';

class UpdateProductPage extends StatelessWidget {
  UpdateProductPage({super.key});

  String? title, price, description, image;

  static String id = 'UpdateProductPage';

  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;

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
                  title = data;
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
                  try {
                    updateProduct(product);
                    print('success');
                  } catch (e) {
                    print(e.toString());
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void updateProduct(ProductModel product) {
    UpdateProductService().updateProduct(
      id: product.id,
      title: title!,
      price: price!,
      description: description!,
      image: image!,
      category: product.category,
    );
  }
}

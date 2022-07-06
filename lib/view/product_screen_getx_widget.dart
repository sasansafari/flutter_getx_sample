import 'package:flutter/material.dart';
import 'package:flutter_getx_sample/controller/product_controller.dart';
import 'package:get/get.dart';

class ProductScreenGetx extends StatelessWidget {
  ProductScreenGetx({super.key});
 


  @override
  Widget build(Object context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetX(
            autoRemove: true,
            dispose: ((state) {
              state.dispose();
            }),
            init: ProductController(),
            builder: (ProductController productController) {
            return Column(
              children: [
                Text(
                  "product name: ${productController.productModel.value.name}",
                  style: const TextStyle(fontSize: 20),
                ),
                Text(
                  "product price: ${productController.productModel.value.price}",
                  style: const TextStyle(fontSize: 20),
                ),
                Text(
                  "product off: ${productController.productModel.value.off}",
                  style: const TextStyle(fontSize: 20),
                ),
              ],
            );
          }),
          ElevatedButton(onPressed: (() {

              Get.find<ProductController>().productModel.update((val) {
                
                  val!.name =" شیر کاکائو ";
                  val.price =" 9500 ";
                  val.off =" 20 ";
              });

          }), child: Text("press")),
        ],
      )),
    );
  }
}

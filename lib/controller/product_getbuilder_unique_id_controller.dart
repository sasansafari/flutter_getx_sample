import 'package:get/get.dart';

import '../model/product_model.dart';

class ProductGetBuilderUniqueIdController extends GetxController {
  ProductModel productModel =
      ProductModel(name: "نوشابه", off: "50", price: "500");

  setNewProduct(int id) {
    productModel.name = "محصول جدید";
    update([id]);
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    print("onInit");
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    print("onReady");
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();

    print("close");
  }
}

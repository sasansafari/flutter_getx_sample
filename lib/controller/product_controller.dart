import 'package:get/get.dart';
import '../model/produt_model.dart';

class ProductController extends GetxController {
  Rx<ProductModel> productModel =
      ProductModel(name: "نوشابه", off: "50", price: "500").obs;
}

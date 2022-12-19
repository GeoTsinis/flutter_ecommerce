import 'package:flutter_ecommerce/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});
  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList => _popularProductList;

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    //if http client response is succesful
    if (response.statusCode == 200) {
      _popularProductList = []; //init to null to avoid double inserts
      // _popularProductList.addAll();
      update(); //its like setState()
    } else {}
  }
}

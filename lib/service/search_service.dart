import 'package:ecommerce_app/models/product_model.dart';

List <ProductsModel> searchByName(String name){
  List<ProductsModel> found=[];
  for(var i in ProductsModel.all_product){
    for(var j in i){
      if(j.productName.toLowerCase().contains(name.toLowerCase())){
        found.add(j);
      }
    }
  }
  return found;
}
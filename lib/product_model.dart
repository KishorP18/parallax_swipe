class ProductModel{
  String price;
  String name;
  String details;

  ProductModel({this.price="",this.name="",this.details=""});
}

class ProductDetailsModel{
  int index;
  String tag;
  ProductDetailsModel({this.index,this.tag});
}
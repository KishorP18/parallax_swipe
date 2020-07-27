import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parallax_swipe/product_model.dart';
import 'ui/product_details.dart';

class RouteConst{
  static const detailScreen="/detail_screen";

  static Route<dynamic> generateRoute(RouteSettings routeSetting){
    switch(routeSetting.name){
      case detailScreen:
        ProductDetailsModel arguments=routeSetting.arguments;
        return  MaterialPageRoute(builder: (context)=>ProductDetails(index:arguments.index,tag: arguments.tag,));
    }
  }
}
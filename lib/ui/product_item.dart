import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:parallax_swipe/util/const_util.dart';

class ProductItem extends StatelessWidget {
  final int index;
  const ProductItem({Key key,@required this.index}):assert(index!=null)
  ,super(key:key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0.0),
      leading: Container(child: SvgPicture.asset(ConstUtil.getImagePreviewSvgPath(index),height: 40,width: 40,)),
      title: Padding(
        padding: const EdgeInsets.only(left:8.0,),
        child: Text("Undercover React",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500),),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(left:8.0),
        child: Text("Rs 1200",style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.w400),),
      ),

    );
  }
}


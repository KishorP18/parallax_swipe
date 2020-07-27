import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:parallax_swipe/util/const_util.dart';
import 'package:parallax_swipe/util/custom_clip_path.dart';

class ProductDetails extends StatelessWidget {
  final int index;
  final String tag;
  const ProductDetails({Key key,@required this.index,@required this.tag}):
        assert(index!=null&&tag!=null),
        super(key:key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: ConstUtil.getBackgroundCardColor(index),
        leading: IconButton(
          onPressed: ()=>Navigator.pop(context),
          icon: Icon(Icons.arrow_back),color: Colors.white,),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.favorite_border,color: Colors.white,),
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Hero(
              tag: index,
              child: Stack(
                children: <Widget>[
                  ClipPath(
                    clipper: CustomClipPath(),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200.0,
                      decoration: BoxDecoration(
                        color: ConstUtil.getBackgroundCardColor(index),
                      ),
                    ),
                  ),
                  Transform.rotate(
                      angle: 0.25,
                      child: SvgPicture.asset(ConstUtil.getImagePreviewSvgPath(index),height: 200.0,)),
                ],
              )),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(ConstUtil.getProductDetails(index).name,style: TextStyle(fontWeight: FontWeight.w800,fontSize: 18.0),),
                Text("Rs ${ConstUtil.getProductDetails(index).price}",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16.0),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0,right: 16.0,bottom: 16.0),
            child:Text(ConstUtil.getProductDetails(index).details,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.black38),) ,

          ),
          ProductTypeRow(),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:InkWell(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              alignment: Alignment.center,
              height: 40.0,
              width: MediaQuery.of(context).size.width/2,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10.0)
                ),
                child: Text("Add to  Bag",style: TextStyle(color: Colors.white,fontWeight:FontWeight.w600 ),)),
          ),
          onTap: ()=>Navigator.of(context).pop()),
    );
  }
}

class ProductTypeRow extends StatelessWidget {
   ProductTypeRow({Key key}):super(key:key);

  final  List<Widget> _productRowItems=<Widget>[ProductRowItem(index: 1),ProductRowItem(index: 2)];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0,right: 16.0,bottom: 16.0),
      child: Row(
        children: <Widget>[
          ProductRowItem(index: 0,borderColor: Colors.black38,backgroundColor: Colors.white,),
         ..._productRowItems
        ],
      ),
    );
  }
}

class ProductRowItem extends StatelessWidget {
  final int index;
  final Color borderColor;
  final Color backgroundColor;
  ProductRowItem({Key key,@required this.index,
  this.backgroundColor,this.borderColor=Colors.white}):assert(index!=null),
  super(key:key);
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left:12.0),
      child: Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(width: 1.0,color: borderColor),
            color:backgroundColor??Colors.grey.withOpacity(0.2)
        ),
        child: Transform.rotate(
            angle: 0.25,
            child: SvgPicture.asset(ConstUtil.getImagePreviewSvgPath(index),)),
      ),
    );
  }
}






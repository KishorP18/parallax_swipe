import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:parallax_swipe/ui/product_item.dart';
import 'package:parallax_swipe/ui/product_preview.dart';



class Home extends StatefulWidget {
  const Home({Key key}):super(key:key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
   PageController _pageController;
   List<ProductItem> _productItemList=[ProductItem(index: 0),ProductItem(index: 1),ProductItem(index: 2)];


   @override
   void initState() {
     super.initState();
     _pageController = PageController(viewportFraction: 0.8);

   }

   @override
   void dispose(){
     _pageController?.dispose();
     timeDilation=1.0;
     super.dispose();
   }

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back,color: Colors.black,),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search,color: Colors.black,),
          )
        ],
      ),
      body: ListView(
        primary: true,
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.only(top:16.0,left: 16.0),
        children: <Widget>[
        const  Text("Shoes",style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold),),
        SizedBox(height: 8.0,),
        TabBarRow(),
        SizedBox(height: 12.0,),
         Container(
            height: MediaQuery.of(context).size.height/2,
            child: PageView.builder(
                itemCount: 3,
                controller: _pageController,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                  return ProductPreview(pageIndex: index,pageController: _pageController,);
                }),
          ),

          Text("243 OPTIONS",style: TextStyle(color: Colors.black38,fontWeight: FontWeight.w600),),
          SizedBox(height: 12.0,),
         ..._productItemList
        ],
      ),
    );
  }


}


class TabBarRow extends StatelessWidget {
  const TabBarRow({Key key}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.0,
      child: ListView(
        primary: true,
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Chip(
            padding: const EdgeInsets.all(8.0),
            label: Text("All",style: TextStyle(color: Colors.white),),backgroundColor: Colors.black,),
         SizedBox(width: 10.0,),
         Chip(
            padding: const EdgeInsets.all(8.0),
            label: Text("Air Max"),backgroundColor: Colors.black12,),
          SizedBox(width: 10.0,),
         Chip(
            padding: const EdgeInsets.all(8.0),
            label: Text("Presto"),backgroundColor: Colors.black12,),

          SizedBox(width: 10.0,),
          Chip(
            padding: const EdgeInsets.all(8.0),
            label: Text("Huarache"),backgroundColor: Colors.black12,),
           SizedBox(width: 10.0,),
          Chip(
            padding: const EdgeInsets.all(8.0),
            label: Text("Max"),backgroundColor: Colors.black12,),
        ],
      ),
    );
  }
}





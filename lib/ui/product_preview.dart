import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:parallax_swipe/ui/product_details.dart';
import 'package:parallax_swipe/util/const_util.dart';

class ProductPreview extends StatelessWidget {
  final int pageIndex;
  final PageController pageController;
  bool _animateProductPreview = false;

  ProductPreview(
      {Key key, @required this.pageIndex, @required this.pageController})
      : assert(pageIndex != null && pageController != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute<void>(
                  builder: (context) => ProductDetails(
                        index: pageIndex,
                        tag: pageIndex.toString(),
                      )));
        },
        child: Hero(
          tag: pageIndex,
          flightShuttleBuilder: (flightContext,animation,direction,fromContext,toContext){
            return SvgPicture.asset(
                ConstUtil.getImagePreviewSvgPath(pageIndex));
          },
          child: Stack(
            children: <Widget>[
              Container(
                alignment: Alignment(-0.5, -0.7),
                child: Text("KD13 EP",
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.white)),
                decoration: BoxDecoration(
                    color: ConstUtil.getBackgroundCardColor(pageIndex),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      const BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0),
                          blurRadius: 6.0),
                    ]),
                width: MediaQuery.of(context).size.width / 1.5,
                height: MediaQuery.of(context).size.width / 1.2,
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 5,
                width: MediaQuery.of(context).size.width / 1.25,
                child: AnimatedBuilder(
                  animation: pageController,
                  builder: (BuildContext context, Widget child) {
                    if ((pageController.position.pixels / (pageIndex + 1)) >=
                        150.0) {
                      _animateProductPreview = true;
                    } else {
                      _animateProductPreview = false;
                    }

                    return AnimatedContainer(
                      transform: Matrix4.rotationZ(
                          _animateProductPreview ? -0.1 : -0.4),
                      duration: const Duration(milliseconds: 100),
                      child: child,
                    );
                  },
                  child: SvgPicture.asset(
                      ConstUtil.getImagePreviewSvgPath(pageIndex)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

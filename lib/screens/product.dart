import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../models/product.dart';

class ProductScreen extends StatefulWidget {
  final Product product;
  int cardIndex;
  ProductScreen({
    this.product,
    this.cardIndex,
  });

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[

          Stack(
            children: <Widget>[

              Positioned(
                top: - MediaQuery.of(context).size.width * 0.3,
                right: - MediaQuery.of(context).size.width * 0.35,
                child: Hero(
                  tag: 'product-bg-'+widget.cardIndex.toString(),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: widget.product.colors,
                        end: Alignment.topRight,
                        begin: Alignment.bottomLeft,
                      ),
                      borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.width * 0.5
                      ),
                    ),
                  ),
                ),
              ),
              
              Padding(
                padding: EdgeInsets.only(
                  top: ScreenUtil().setHeight(160),
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Hero(
                    tag: 'product-image-'+widget.cardIndex.toString(),
                    child: Image(
                      image: AssetImage(widget.product.imageUrl),
                      width: MediaQuery.of(context).size.width * 0.89,
                      height: MediaQuery.of(context).size.width * 0.8,
                    ),
                  ),
                ),
              ),
              
              Padding(
                padding: EdgeInsets.only(
                  top: ScreenUtil().setHeight(108),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    '0${widget.cardIndex + 1}',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 30
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: ScreenUtil().setWidth(30),
                  vertical: ScreenUtil().setHeight(60),
                ),
                child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  iconSize: 35.0,
                  color: Colors.black,
                  onPressed: () {
                    return Navigator.pop(context);
                  },
                ),
              ),

            ],
          ),

        ],
      ),
    );
  }
}
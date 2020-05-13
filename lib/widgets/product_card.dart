import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../screens/product.dart';
import '../models/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final int cardIndex;
  ProductCard({
    this.product,
    this.cardIndex,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        return Navigator.push(
          context, 
          MaterialPageRoute(
            builder: (_) {
              return ProductScreen(
                product: product, 
                cardIndex: cardIndex,
              );
            }
          )
        );
      },
      child: Padding(
        padding: EdgeInsets.only(
          left: ScreenUtil().setHeight(40),
        ),
        child: Container(
          width: ScreenUtil().setWidth(640),
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[

              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                    bottom: ScreenUtil().setHeight(40),
                  ),
                  child: Container(
                    width: ScreenUtil().setWidth(640),
                    height: ScreenUtil().setHeight(1050),
                    child: Stack(
                      children: <Widget>[

                        Hero(
                          tag: 'product-bg-'+cardIndex.toString(),
                          child: Container(
                            width: ScreenUtil().setWidth(620),
                            height: ScreenUtil().setHeight(960),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: product.colors,
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(0, 8),
                                  blurRadius: 8,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),

                        Positioned(
                          top: ScreenUtil().setHeight(50),
                          left: ScreenUtil().setWidth(50),
                          child: Text(
                            '0${cardIndex + 1}',
                            style: TextStyle(
                              fontSize: ScreenUtil().setWidth(100),
                              fontWeight: FontWeight.bold,
                              letterSpacing: ScreenUtil().setWidth(4),
                              fontFamily: 'Montserrat',
                              color: Colors.white,
                            ),
                          ),
                        ),

                        Positioned(
                          top: ScreenUtil().setHeight(60),
                          left: ScreenUtil().setWidth(35),
                          child: Hero(
                            tag: 'product-image-'+cardIndex.toString(),
                            child: Image(
                              image: AssetImage(product.imageUrl),
                              width: ScreenUtil().setWidth(620),
                              height: ScreenUtil().setHeight(650),
                            ),
                          ),
                        ),

                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: ScreenUtil().setWidth(50),
                              bottom: ScreenUtil().setHeight(90),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  product.name,
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    letterSpacing: 0.5
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(height: ScreenUtil().setHeight(15),),
                                Text(
                                  '\$ ${product.price}',
                                  style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    letterSpacing: 0.5
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
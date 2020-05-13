import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../models/product.dart';

class BannerCard extends StatelessWidget {
  final List<Product> products;
  BannerCard({
    this.products,
  });
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: ScreenUtil().setHeight(120),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          
          Padding(
            padding: EdgeInsets.only(
              top: ScreenUtil().setHeight(30),
              bottom: ScreenUtil().setHeight(55),
              left: ScreenUtil().setHeight(70),
            ),
            child: Text(
              'New Arrival',
              style: TextStyle(
                fontSize: ScreenUtil().setWidth(100),
                fontWeight: FontWeight.w800,
                letterSpacing: ScreenUtil().setWidth(2),
                fontFamily: 'Montserrat',
              ),
            ),
          ),
          
          Column(
            children: products.map((product) {
              return Padding(
                padding: EdgeInsets.only(
                  left: ScreenUtil().setWidth(70),
                  right: ScreenUtil().setWidth(70),
                ),
                child: Stack(
                  children: <Widget>[

                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: ScreenUtil().setHeight(470),
                    ),

                    Container(
                      margin: EdgeInsets.only(
                        top: ScreenUtil().setHeight(35),
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: ScreenUtil().setHeight(400),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: product.colors,
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 6),
                            blurRadius: 8,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),

                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: ScreenUtil().setHeight(400),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: ScreenUtil().setHeight(60),
                          bottom: ScreenUtil().setHeight(80),
                          left: ScreenUtil().setHeight(50),
                          right: ScreenUtil().setWidth(250),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              product.name,
                              style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                                letterSpacing: 0.4,
                              ),
                            ),
                            SizedBox(height: 2,),
                            Text(
                              '\$ ${product.price}',
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                                letterSpacing: 0.4,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Positioned(
                      top: - ScreenUtil().setHeight(40),
                      right: 0,
                      child: Transform.rotate(
                        angle: - 22 / 7 / 25,
                        child: Image(
                          image: AssetImage(product.imageUrl),
                          width: MediaQuery.of(context).size.width * 0.5,
                        ),
                      ),
                    ),

                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

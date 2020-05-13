import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/brand_selector.dart';
import '../widgets/product_card.dart';
import '../widgets/banner_card.dart';
import '../models/product.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Padding(
            padding: EdgeInsets.only(
              top: ScreenUtil().setHeight(40),
              left: ScreenUtil().setHeight(40),
              right: ScreenUtil().setHeight(60),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(FontAwesomeIcons.bars),
                  iconSize: 25.0,
                  color: Colors.black54,
                  onPressed: () {

                  },
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular( ScreenUtil().setWidth(80) ),
                  child: Image(
                    image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRh-F4qsMufhmSQhN1TlpquIkXDplGx_q7J8-PCEYCJ_HHznj8Y&usqp=CAU'),
                    width: ScreenUtil().setWidth(160),
                    height: ScreenUtil().setWidth(160),
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(
              top: ScreenUtil().setHeight(60),
              left: ScreenUtil().setHeight(70),
              bottom: ScreenUtil().setHeight(105),
            ),
            child: Text(
              'Explore',
              style: TextStyle(
                fontSize: ScreenUtil().setWidth(100),
                fontWeight: FontWeight.w800,
                letterSpacing: ScreenUtil().setWidth(2),
                fontFamily: 'Montserrat',
              ),
            ),
          ),

          BrandSelector(
            brands: ['Nike', 'Adidas', 'Converse', 'Vans']
          ),

          SizedBox(
            height: ScreenUtil().setHeight(50),
          ),
          
          SizedBox(
            height: ScreenUtil().setHeight(1050),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) {
                Product product = products[index];
                return Padding(
                  padding: EdgeInsets.only(
                    left: ScreenUtil().setWidth(30)
                  ),
                  child: ProductCard(
                    product: product,
                    cardIndex: index,
                  ),
                );
              },
            ),
          ),
          
          BannerCard(
            products: products,
          ),

        ],
      ),
    );
  }
}

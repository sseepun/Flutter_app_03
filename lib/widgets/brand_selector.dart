import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

class BrandSelector extends StatefulWidget {
  final List<String> brands;
  BrandSelector({
    @required this.brands,
  });

  @override
  _BrandSelectorState createState() => _BrandSelectorState();
}

class _BrandSelectorState extends State<BrandSelector> {
  int _selectedIndex = 0;

  List<Widget> _buildShoesBrands() {
    return widget.brands.map((brand) {
      var index = widget.brands.indexOf(brand);
      return Padding(
        padding: EdgeInsets.only(
          left: ScreenUtil().setWidth(75)
        ),
        child: GestureDetector(
          onTap: () {
            setState(() {
              _selectedIndex = index;
            });
          },
          child: Text(
            brand,
            style: TextStyle(
              color: index == _selectedIndex ? Colors.black : Colors.black26,
              fontSize: 20,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: _buildShoesBrands(),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:mamba/constants/colors.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CustomAppBar extends StatelessWidget {
  final IconData leftIcon;
  final IconData rightIcon;
  final Function? leftCallBack;
  CustomAppBar(this.leftIcon, this.rightIcon, {this.leftCallBack});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            // onTap: leftCallBack != null ? () => leftCallBack!() : null,
            onTap: () => {
              print(123),
              Fluttertoast.showToast(msg: "Артка")
              },
            
            child: _buildIcon(leftIcon),
          ),
          _buildIcon(rightIcon),
        ],),
        
        
    );    
  }

  Widget _buildIcon(IconData icon) {
    return Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Icon(icon),
          );
  }
}


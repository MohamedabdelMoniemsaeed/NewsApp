import 'package:flutter/material.dart';
import 'package:newap/model/Categories/CategonryDM.dart';

class Categony extends StatelessWidget {
  CategonyBM categonyBM;
  Categony(this.categonyBM);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
          bottomRight:
              categonyBM.isLeftsided ? Radius.zero : Radius.circular(25),
          bottomLeft:
              categonyBM.isLeftsided ? Radius.circular(25) : Radius.zero,
        ),
        color: categonyBM.backgroundColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Image.asset(categonyBM.imagePath),
          Spacer(),
          Text(
            categonyBM.title,
            style: TextStyle(color: Colors.white, fontSize: 18),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:newap/Screen/Categories/Categonry.dart';
import 'package:newap/model/Categories/CategonryDM.dart';

class CategoriesTtab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(8),
          child: Text("Pick Your category of interesst",
              style: TextStyle(fontSize: 24)),
          // child: ListView.builder(itemBuilder: (_,index),itemCount: 6),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 8),
              itemCount: 6,
              itemBuilder: (context, index) {
                return InkWell(
                    onTap: () {},
                    child: Categony(CategonyBM.categories[index]));
              },
            ),
          ),
        )
      ],
    );
  }
}

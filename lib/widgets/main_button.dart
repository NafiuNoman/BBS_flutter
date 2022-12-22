import 'package:bbs_app/styles/common_colors.dart';
import 'package:flutter/material.dart';

import '../pages/data_collection_page.dart';

class MainButton extends StatelessWidget {
  final String title;
  final String imagePath;
  final Widget page;

  const MainButton({super.key, required this.title,    required this.imagePath,  required this.page});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: InkWell(
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>page));},
          child: Container(
            decoration: buttonDecoration(),
            height: 80,

            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  Image.asset(imagePath,width: 55,height: 55,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  BoxDecoration buttonDecoration() {
    return BoxDecoration(
      gradient: const LinearGradient(
          colors: [mainButtonStarColor, mainButtonEndColor],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter),
      boxShadow: const [
        BoxShadow(blurRadius: 5,blurStyle: BlurStyle.outer,),
        // BoxShadow(blurStyle: BlurStyle.outer,offset: Offset(0, 17),blurRadius: 35,color: Color.fromRGBO(
        //     1, 37, 22, 0.44),),
        // BoxShadow(blurStyle: BlurStyle.inner,offset: Offset(0, 7.83),blurRadius: 7.83,color: Color.fromRGBO(
        //     6, 239, 142, 1),),
      ],

      borderRadius: BorderRadius.circular(5),
    );
  }
}

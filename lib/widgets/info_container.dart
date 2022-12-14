import 'package:flutter/material.dart';

class InfoContainer extends StatelessWidget {
  final String imagePath;
  final String title;
  final String count;

  const InfoContainer(
      {Key? key,  required this.title, required this.count, required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          // width: 200,
          height: 70,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                blurRadius: 15,
                blurStyle: BlurStyle.outer,
              )
            ],
          ),
          child: ListTile(

            leading: Image.asset(imagePath,height: 60,width: 40,),

            title: Text(count,style: TextStyle(fontWeight: FontWeight.w500,height: 1),),
            subtitle: Text(
              title,
              style: TextStyle(height: 1,fontSize: 11,fontWeight: FontWeight.w500,color: Color.fromRGBO(144, 152, 163, 1)),
            ),
          ),
        ),
      ),
    );
  }
}


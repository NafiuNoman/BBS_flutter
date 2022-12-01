import 'package:flutter/material.dart';

class InfoContainer extends StatelessWidget {
  final IconData icon;
  final String title;
  final String count;

  const InfoContainer(
      {Key? key, required this.icon, required this.title, required this.count})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 70,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
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
        leading: Icon(
          icon,
          size: 40,
          color: Colors.black,
        ),
        title: Text(count),
        subtitle: Text(
          title,
          style: TextStyle(fontSize: 10),
        ),
      ),
    );
  }
}

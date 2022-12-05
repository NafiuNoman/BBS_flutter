import 'package:flutter/material.dart';

class DataCollectionIndicator extends StatelessWidget {
  final double value;
  final String btnLabel;

  const DataCollectionIndicator({super.key, required this.value, required this.btnLabel});

  @override
  Widget build(BuildContext context) {
    Color beginColor = Color.fromRGBO(255, 191, 26, 1);
    Color endColor = Color.fromRGBO(255, 0, 85, 1);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // Button container
        customMapButton(),
        // Indicator
        Expanded(
          child: customIndicator(),
        ),
        Text(
          '${(value*100).round()}% compleate',
          style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
        ),

        listOrViewButton(beginColor, endColor),
      ],
    );
  }

  Container customMapButton() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          'See Map',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
        ),
      ),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/area_btn.png'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.deepOrangeAccent.shade100.withOpacity(0.5),
                  BlendMode.srcOver)),
          border: Border.all(color: Colors.deepOrangeAccent, width: 1.5),
          borderRadius: BorderRadius.circular(4)),
    );
  }

  Padding customIndicator() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: AspectRatio(
        aspectRatio: 10 / 0.3,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: LinearProgressIndicator(
            value:value,
            backgroundColor: Colors.deepOrangeAccent.withOpacity(0.25),
            color: Colors.deepOrangeAccent,
          ),
        ),
      ),
    );
  }

  Padding listOrViewButton(Color beginColor, Color endColor) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Container(
          child: Padding(
            padding: const EdgeInsets.all(7.0),
            child: Text(btnLabel),
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.deepOrange,
              gradient: LinearGradient(
                  colors: [beginColor, endColor],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter))),
    );
  }
}

import 'package:flutter/material.dart';

class DataCollectionIndicator extends StatelessWidget {
  final double value;
  final String btnLabel;
  final String areaTitle;

  const DataCollectionIndicator({super.key, required this.value, required this.btnLabel, required this.areaTitle});

  @override
  Widget build(BuildContext context) {
    Color beginColor = const Color.fromRGBO(255, 191, 26, 1);
    Color endColor = const Color.fromRGBO(255, 0, 85, 1);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      verticalDirection: VerticalDirection.up,
      // crossAxisAlignment: CrossAxisAlignment.center,

      children: [
        // Button container
        customMapButton(),
        // Indicator
        Expanded(
          child: customIndicator(),
        ),
        Text(
          '${(value*100).round()}% complete',
          style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
        ),

        listOrViewButton(beginColor, endColor),
      ],
    );
  }

  Container customMapButton() {
    return Container(

      decoration: BoxDecoration(
          image: DecorationImage(
              image: const AssetImage('assets/images/area_btn.png'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.deepOrangeAccent.shade100.withOpacity(0.5),
                  BlendMode.srcOver)),
          border: Border.all(color: Colors.deepOrangeAccent, width: 1.5),
          borderRadius: BorderRadius.circular(4)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          'See Map',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
        ),
      ),
    );
  }

  Widget customIndicator() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

           Align(alignment: Alignment.topLeft,child: Text(areaTitle,style: const TextStyle(fontSize: 10),)),
          AspectRatio(
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
        ],
      ),
    );
  }

  Padding listOrViewButton(Color beginColor, Color endColor) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.deepOrange,
              gradient: LinearGradient(
                  colors: [beginColor, endColor],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          child: Padding(
            padding: const EdgeInsets.all(7.0),
            child: Text(btnLabel,style: const TextStyle(fontSize: 10),),
          )),
    );
  }
}

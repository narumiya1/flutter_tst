import 'package:diajar_flutter/ui/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polygon/flutter_polygon.dart';
// import 'package:polygon_clipper/polygon_clipper.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:polygon_clipper/polygon_clipper.dart';

class MyActionFloatingButton extends StatelessWidget {
  const MyActionFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
      child: ClipPolygon(
        sides: 6,
        borderRadius: 5.0, // Defaults to 0.0 degrees
        rotate: 90.0, // Defaults to 0.0 degrees
        boxShadows: [
          PolygonBoxShadow(color: Colors.black, elevation: 1.0),
          PolygonBoxShadow(color: Colors.grey, elevation: 5.0)
        ],
        child: Container(
          color: iconYellow,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.book),
              SizedBox(
                height: 4.0,
              ),
              Text(
                'Menu',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}

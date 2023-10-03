import 'package:flutter/material.dart';
import 'package:instagram_clone_flutter/screens/heath_screen.dart';


class HealthexpertWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator HealthexpertWidget - FRAME
    return Container(
        width: 375,
        height: 812,
        decoration: BoxDecoration(
          color : Color.fromRGBO(0, 0, 0, 1),
        ),
        child: Stack(
            children: <Widget>[
              Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                      width: 385,
                      height: 245,
                      decoration: BoxDecoration(
                        color : Color.fromRGBO(0, 0, 0, 1),
                      )
                  )
              ),Positioned(
                  top: 130,
                  left: 105.20833587646484,
                      child:Container(
                      width: 164.5833282470703,
                      height: 158,
                      decoration: BoxDecoration(
                        boxShadow : [BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            offset: Offset(0,4),
                            blurRadius: 20
                        )],
                        border : Border.all(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          width: 4,
                        ),
                        image : DecorationImage(
                            image: AssetImage('assets/images/medical_expert_1/Ellipse6.png'),
                            fit: BoxFit.fitWidth
                        ),
                        borderRadius : BorderRadius.all(Radius.elliptical(164.5833282470703, 158)),
                      )
                  )
              ), Positioned(
  top: 645,
  left: 54,
  child: GestureDetector(
    onTap: () {
      // Add your onTap functionality here, such as navigating to another screen.
    },
    child: Container(
      width: 268,
      height: 94,
      decoration: BoxDecoration(
        color: Colors.black, // Background color
        borderRadius: BorderRadius.circular(50.0), // Rounded corners with a radius of 50
        border: Border.all(
          color: Colors.white, // Border color
          width: 4.0, // Border width
        ),
      ),
      child: Center(
        child: Text(
          'Book a session',
          style: TextStyle(
            color: Colors.white, // Text color
            fontSize: 18.0, // Text size
            fontWeight: FontWeight.normal, // Text bold
          ),
        ),
      ),
    ),
  ),
),
Positioned(
  top: 19,
  left: 13,
  child: GestureDetector(
    onTap: () {
      // Navigate to the previous page when the arrow/button is tapped.
      Navigator.of(context).pop();
    },
    child: Container(
      width: 50,
      height: 56,
      decoration: BoxDecoration(
        color: Colors.transparent, // Set the background color to transparent
      ),
      child: Icon(
        Icons.arrow_back, // Use the back arrow icon
        color: Colors.white, // Set the arrow color to white
        size: 32.0, // Adjust the size of the arrow as needed
      ),
    ),
  ),
),
Positioned(
                  top: 43,
                  left: 130,
                  child: Container(
                      width: 116,
                      height: 80,
                      decoration: BoxDecoration(
                        image : DecorationImage(
                            image: AssetImage('assets/images/medical_expert_1/Image6.png'),
                            fit: BoxFit.fitWidth
                        ),
                      )
                  )
              ),
            ]
        )
    );
  }
}

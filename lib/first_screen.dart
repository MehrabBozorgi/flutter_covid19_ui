import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_covid19_ui/second_screen.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF393e46),
      body: Column(
        children: [
          Image.asset(
            'pic1.png',
            height: 300,
            width: double.infinity,
          ),
          SizedBox(height: 15),
          Text(
            'All You Need to',
            style: TextStyle(
              color: Color(0xFF35e0c5),
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Know About Covid 19',
            style: TextStyle(
              color: Color(0xFF35e0c5),
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text(
              'Coronavirus (COVID-19) is an infectious disease caused by a newly discovered coronavirus',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 25),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 45),
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: Color(0xFF222831),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SecondScreen(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Start Now',
                      style: TextStyle(
                        color: Color(0xFF35e0c5),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Color(0xFF35e0c5),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(2),
                child: CircleAvatar(
                  backgroundColor: Color(0xFF3fab9a),
                  radius: 4,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2),
                child: CircleAvatar(
                  backgroundColor: Color(0xFF3fab9a),
                  radius: 4,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2),
                child: CircleAvatar(
                  backgroundColor: Color(0xFF5effe6),
                  radius: 7,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

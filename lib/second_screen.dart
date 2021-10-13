import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_covid19_ui/model.dart';

class SecondScreen extends StatelessWidget {
  List<MyModel> myModel = [
    MyModel(
      id: 1,
      text1: 'High Fever',
      text2: '37/40',
      image: 'pic2.png',
      color: Color(0xFFB71C1C),
    ),
    MyModel(
      id: 2,
      text1: 'Dry Cough',
      text2: 'Uncontrollable',
      image: 'pic2.png',
      color: Color(0xFF0D47A1),
    ),
    MyModel(
      id: 3,
      text1: 'Sore throat',
      text2: 'With Pain',
      image: 'pic2.png',
      color: Color(0xFF1B5E20),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu_rounded,
                    color: Color(0xFF393e46),
                    size: 30,
                  ),
                  Text(
                    'COVID-19',
                    style: TextStyle(
                      color: Color(0xFF393e46),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.search_rounded,
                    color: Color(0xFF393e46),
                    size: 30,
                  ),
                ],
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 10),
              color: Color(0xFF393e46),
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                width: double.infinity,
                height: 140,
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(
                          right: 15, left: 15, top: 10, bottom: 5),
                      child: Text(
                        'Emergency',
                        style: TextStyle(
                          color: Color(0xFF35e0c5),
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(right: 15, left: 15, bottom: 5),
                      child: Text(
                        'How to know if i have covid-19?',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 150,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Color(0xFF35e0c5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            'Call Now',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 150,
                          height: 45,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: Color(0xFF35e0c5), width: 2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            'Guide',
                            style: TextStyle(
                              color: Color(0xFF35e0c5),
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              width: double.infinity,
              child: Text(
                'Covid-19 Guide',
                style: TextStyle(
                  color: Color(0xFF393e46),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      color: Color(0xFF35e0c5),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      'Symptoms',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  TextWidget(text: 'Preventions'),
                  TextWidget(text: 'Indications'),
                  TextWidget(text: 'Preventions'),
                  TextWidget(text: 'Indications'),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 160,
              margin: EdgeInsets.only(left: 10),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: myModel.length,
                itemBuilder: (context, index) => Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: Color(0xFF393e46),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        CircleAvatar(
                          child: Image.asset(
                            myModel[index].image,
                            width: 60,
                            height: 60,
                          ),
                          radius: 40,
                          backgroundColor: myModel[index].color,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(
                            myModel[index].text1,
                            style: TextStyle(
                              color: Color(0xFF35e0c5),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(
                            myModel[index].text2,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),




            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Stack(
                  children: [
                    Image.asset('pic3.png',
                        height: 150,
                        width: double.infinity,
                        fit: BoxFit.fitWidth),
                    Column(
                      children: [
                        Container(
                          width: 160,
                          padding: EdgeInsets.only(left: 25, top: 20),
                          child: Text(
                            'Be aware From Covid-19',
                            style: TextStyle(
                                color: Color(0xFF393e46),
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xFF393e46)),
                          onPressed: () {},
                          child: Text(
                            'Learn More',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF35e0c5),
                                fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  final String text;

  const TextWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: TextStyle(
          color: Color(0xFF393e46),
          fontSize: 16,
        ),
      ),
    );
  }
}

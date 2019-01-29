import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: 350.0,
              width: double.infinity,
            ),
            Container(
              height: 200.0,
              width: double.infinity,
              color: Color(0xFFFA624F),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {},
                color: Colors.white,
              ),
            ),
            Positioned(
              top: 125.0,
              left: 15.0,
              right: 15.0,
              child: Material(
                elevation: 3.0,
                borderRadius: BorderRadius.circular(7.0),
                child: Container(
                  height: 200.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.0),
                      color: Colors.white),
                ),
              ),
            ),
            Positioned(
              top: 75.0,
              left: (MediaQuery.of(context).size.width / 2 - 50.0),
              child: Container(
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    image: DecorationImage(
                        image: AssetImage('assets/chris.jpg'),
                        fit: BoxFit.cover)),
              ),
            ),
            Positioned(
              top: 190.0,
              left: (MediaQuery.of(context).size.width / 2) - 105.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Chris Pratt',
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0),
                  ),
                  SizedBox(height: 7.0),
                  Text(
                    'China',
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                        color: Colors.grey),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    children: <Widget>[
                      FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                        color: Color(0xFFFA624F),
                        onPressed: () {},
                        child: Text(
                          'Message',
                          style: TextStyle(
                              fontFamily: 'Comfortaa',
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(width: 5.0),
                      FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                        color: Colors.grey,
                        onPressed: () {},
                        child: Text(
                          'Following',
                          style: TextStyle(
                              fontFamily: 'Comfortaa',
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                              color: Colors.white),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        SizedBox(height: 10.0),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Menu',
                style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'see all',
                style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontSize: 15.0,
                    color: Colors.grey,
                    fontWeight: FontWeight.w300),
              )
            ],
          ),
        ),
        SizedBox(height: 10.0),
        Column(
          children: <Widget>[
            menuCard('Berry banana milkshake', 'assets/bananabreak.jpg',
                'Breakfast', 4, 2.8, 1.2),
            SizedBox(height: 12.0),
            menuCard('Fruit pancake', 'assets/fruitbreak.jpeg', 'Breakfast', 4,
                4.2, 2.8),
          ],
        ),
        SizedBox(height: 25.0),
        Padding(
          padding: EdgeInsets.only(left: 15.0, right: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Works',
                style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'see all',
                style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontSize: 15.0,
                    color: Colors.grey,
                    fontWeight: FontWeight.w300),
              )
            ],
          ),
        ),
        SizedBox(height: 10.0),
        Padding(
          padding: EdgeInsets.only(left: 15.0, right: 5.0),
          child: Container(
            height: 125.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                getWorks('assets/fruitpancake.jpeg'),
                getWorks('assets/dumplings.jpeg'),
                getWorks('assets/noodles.jpeg'),
              ],
            ),
          ),
        ),
        SizedBox(height: 15.0),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Bought',
                style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'see all',
                style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontSize: 15.0,
                    color: Colors.grey,
                    fontWeight: FontWeight.w300),
              )
            ],
          ),
        ),
        SizedBox(height: 15.0),
      ],
    ));
  }

  Widget getWorks(String imgPath) {
    return Padding(
      padding: EdgeInsets.only(right: 10.0),
      child: Container(
        height: 100.0,
        width: 125.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          image: DecorationImage(
            image: AssetImage(imgPath),
            fit: BoxFit.cover
          )
        ),
      ),
    );
  }

  Widget menuCard(String title, String imgPath, String type, int rating,
      double views, double likes) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      child: Material(
        borderRadius: BorderRadius.circular(7.0),
        elevation: 4.0,
        child: Container(
          height: 125.0,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.0), color: Colors.white),
          child: Row(
            children: <Widget>[
              SizedBox(width: 10.0),
              Container(
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(imgPath), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(7.0)),
              ),
              SizedBox(width: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 15.0),
                  Text(
                    title,
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 7.0),
                  Text(
                    type,
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        color: Colors.grey,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 7.0),
                  Row(
                    children: <Widget>[
                      getStar(rating, 1),
                      getStar(rating, 2),
                      getStar(rating, 3),
                      getStar(rating, 4),
                      getStar(rating, 5)
                    ],
                  ),
                  SizedBox(height: 4.0),
                  Row(
                    children: <Widget>[
                      Icon(Icons.remove_red_eye,
                          color: Colors.grey.withOpacity(0.4)),
                      SizedBox(width: 3.0),
                      Text(views.toString()),
                      SizedBox(width: 10.0),
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      SizedBox(width: 3.0),
                      Text(likes.toString())
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget getStar(rating, index) {
    if (rating >= index) {
      return Icon(Icons.star, color: Colors.yellow);
    } else {
      return Icon(Icons.star, color: Colors.grey.withOpacity(0.5));
    }
  }
}

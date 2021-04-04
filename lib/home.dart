import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
 
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: LogoText(),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: AccountAvatar(),
        ),
        actions: [
          Container(
            child: IconButton(icon: Icon(Icons.settings), onPressed: () {}),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.greenAccent,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, color: Colors.white,),
            activeIcon: Icon(Icons.home, color: Colors.greenAccent),
            label: "Home",
            tooltip: "home feed"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined, color: Colors.white,),
            activeIcon: Icon(Icons.add_box_rounded, color: Colors.greenAccent),
            label: "Home",
            tooltip: "home feed"
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined, color: Colors.white,),
            activeIcon: Icon(Icons.account_circle, color: Colors.greenAccent),
            label: "Accounts"
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           
            Container(
                margin: EdgeInsets.only(left: 20, top: 30), child: StoryRow()),

            Container(margin: EdgeInsets.only(top: 30), child: FeedCard()),
            Container(margin: EdgeInsets.only(top: 30), child: FeedCard()),
            Container(margin: EdgeInsets.only(top: 30), child: FeedCard()),
            Container(margin: EdgeInsets.only(top: 30), child: FeedCard()),
            Container(margin: EdgeInsets.only(top: 30), child: FeedCard()),
          ],
        ),
      ),
    ));
  }
}

class LogoText extends StatelessWidget {
  const LogoText({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            height: 5,
            width: 40,
            color: Colors.greenAccent,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            "Wiz Share",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            height: 5,
            width: 40,
            color: Colors.greenAccent,
          ),
        ],
      ),
    );
  }
}

class Placeholder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.grey[700],
      ),
      child: Center(
        child: Text(
          "Share your Wisdom",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class AccountAvatar extends StatefulWidget {
  @override
  _AccountAvatarState createState() => _AccountAvatarState();
}

class _AccountAvatarState extends State<AccountAvatar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.greenAccent, width: 1.8),
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: CircleAvatar(
          radius: 20.0,
          backgroundColor: Colors.greenAccent,
          backgroundImage: AssetImage('assets/images/ppic.jpg'),
        ),
      ),
    );
  }
}

class StoryRow extends StatefulWidget {
  @override
  _StoryRowState createState() => _StoryRowState();
}

class _StoryRowState extends State<StoryRow> {
  double radius = 30;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.greenAccent, width: 1.8),
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: CircleAvatar(
                  radius: radius,
                  backgroundColor: Colors.grey[900],
                  child: Center(
                    child: IconButton(
                        icon: Icon(
                          Icons.add,
                          color: Colors.greenAccent,
                          size: 30,
                        ),
                        onPressed: () {}),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.greenAccent, width: 1.8),
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: CircleAvatar(
                  radius: radius,
                  backgroundColor: Colors.greenAccent,
                  backgroundImage: AssetImage('assets/images/uLady.jpg'),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.greenAccent, width: 1.8),
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: CircleAvatar(
                  radius: radius,
                  backgroundColor: Colors.greenAccent,
                  backgroundImage: AssetImage('assets/images/leaves.jpg'),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.greenAccent, width: 1.8),
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: CircleAvatar(
                  radius: radius,
                  backgroundColor: Colors.greenAccent,
                  backgroundImage: AssetImage('assets/images/ppic.jpg'),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.greenAccent, width: 1.8),
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: CircleAvatar(
                  radius: radius,
                  backgroundColor: Colors.greenAccent,
                  backgroundImage: AssetImage('assets/images/ppic.jpg'),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.greenAccent, width: 1.8),
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: CircleAvatar(
                  radius: radius,
                  backgroundColor: Colors.greenAccent,
                  backgroundImage: AssetImage('assets/images/ppic.jpg'),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.greenAccent, width: 1.8),
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: CircleAvatar(
                  radius: radius,
                  backgroundColor: Colors.greenAccent,
                  backgroundImage: AssetImage('assets/images/ppic.jpg'),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.greenAccent, width: 1.8),
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: CircleAvatar(
                  radius: radius,
                  backgroundColor: Colors.greenAccent,
                  backgroundImage: AssetImage('assets/images/leaves.jpg'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FeedCard extends StatefulWidget {
  @override
  _FeedCardState createState() => _FeedCardState();
}

class _FeedCardState extends State<FeedCard> {
  bool liked = false;
  bool bookmark = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 500,
        width: MediaQuery.of(context).size.width,
        child: Card(
          color: Colors.grey[800],
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                child: CustomPaint(
                  painter: CirclePainter(),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 250, left: 150),
                child: CustomPaint(
                  painter: BoxPainter(),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.greenAccent, width: 2.0),
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.greenAccent,
                          backgroundImage: AssetImage('assets/images/ppic.jpg'),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      "a_weird_Writer",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 330, top: 10),
                child: IconButton(
                    icon: Icon(
                      Icons.more_vert,
                      size: 30,
                      color: Colors.white,
                    ),
                    onPressed: () {}),
              ),
               Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    margin: EdgeInsets.only(top: 50),
                    width: MediaQuery.of(context).size.width,
                    height: 370,
                    child: FocusedMenuHolder(
                      menuBoxDecoration: BoxDecoration(
                        color: Colors.grey[900],
                      ),
                      blurSize: 5,
                      duration: Duration(milliseconds: 500),
                      blurBackgroundColor: Colors.grey[900],
                      menuWidth: MediaQuery.of(context).size.width*0.5,
                      menuItemExtent: 50,
                      onPressed: (){},
                      menuItems: <FocusedMenuItem>[
                        FocusedMenuItem(title: Text("About"), onPressed: (){setState(() {});}, trailingIcon: Icon(Icons.details_rounded, color: Colors.red),),
                        FocusedMenuItem(title: Text("Visit Account"), onPressed: (){setState(() {});}, trailingIcon: Icon(Icons.account_box_rounded, color: Colors.blueAccent), ),
                        FocusedMenuItem(title: Text("Share to"), onPressed: (){setState(() {});}, trailingIcon: Icon(Icons.share_outlined, color: Colors.purpleAccent), ),
                        FocusedMenuItem(title: Text("Report", style: TextStyle(color: Colors.white),), onPressed: (){setState(() {});}, trailingIcon: Icon(Icons.error_outline, color: Colors.white), backgroundColor: Colors.redAccent),
                      ],
                      child: Card(
                        elevation: 8.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '"The greatest glory in living lies not in never falling, but in rising every time we fall."',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 20, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              
              Container(
                margin: EdgeInsets.only(top: 340, left: 230),
                child: Text(
                  "-- Nelson Mandela",            
                  style: TextStyle(color: Colors.black,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline
                  )
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 440, left: 10),
                child: Row(
                  children: [
                    IconButton(icon: Icon(
                      liked  == true ? Icons.thumb_up_sharp : 
                      Icons.thumb_up_alt_outlined, 
                      color: Colors.greenAccent,), 
                      onPressed: (){
                        setState(() {
                          liked = ! liked;
                        });}
                    ),
                    IconButton(icon: Icon(Icons.comment, color: Colors.greenAccent,), onPressed: (){}),
                    IconButton(icon: Icon(Icons.share_outlined, color: Colors.greenAccent,), onPressed: (){}),
                    SizedBox(width: 180,),
                    IconButton(icon: Icon(
                      bookmark == true ? Icons.bookmark : 
                      Icons.bookmark_border, color: Colors.greenAccent,
                      ), onPressed: (){
                      setState(() {
                        bookmark = ! bookmark;                        
                      });
                    }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CirclePainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {

    var posX = 100.0;
    var posY = 100.0;
    var radius =  min(posX, posY);
    var location = Offset(posX, posY);

    var paintbrush = Paint()
    ..color = Colors.black
    ..strokeWidth = 80
    ..style = PaintingStyle.stroke;

    canvas.drawCircle(location, radius, paintbrush);
 

  }

  @override
  bool shouldRepaint(CirclePainter oldDelegate) {
    return true;
  }
}


class BoxPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
     var posX = 100.0;
    var posY = 100.0;
    var radius =  min(posX, posY);
    var location = Offset(posX, posY);

    var paintbrush = Paint()
    ..color = Colors.black
    ..strokeWidth = 80
    ..style = PaintingStyle.stroke;

    canvas.drawRect(Offset(100, 100) & const Size(200, 200), paintbrush);
 
  }

  @override
  bool shouldRepaint(BoxPainter oldDelegate) => false;

}
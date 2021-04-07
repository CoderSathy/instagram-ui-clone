import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'messages-page.dart';

class MessangerPage extends StatefulWidget {
  @override
  _MessangerPageState createState() => _MessangerPageState();
}

class _MessangerPageState extends State<MessangerPage> {
  double sizeOfImage = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        shadowColor: Colors.white,
        title: Text("Chats",style: TextStyle(color: Colors.black),),
        actions: [
          IconButton(
            icon: FaIcon(FontAwesomeIcons.edit, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => MessagesPage()));
              },
              child: ListTile(
                leading:      CircleAvatar(
                  radius: sizeOfImage + 4,
                  backgroundColor: Colors.deepOrange,
                  child: CircleAvatar(
                    radius: sizeOfImage + 2,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: sizeOfImage,
                      backgroundImage: AssetImage("assets/0.jpeg"),
                    ),
                  ),
                ),
                title: Text("Sulav Parajuli"),
                subtitle: Text("This is the last message.2d"),
              ),
            ),
            ListTile(
              leading:      CircleAvatar(
                radius: sizeOfImage + 4,
                backgroundColor: Colors.deepOrange,
                child: CircleAvatar(
                  radius: sizeOfImage + 2,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: sizeOfImage,
                    backgroundImage: AssetImage("assets/1.jpg"),
                  ),
                ),
              ),
              title: Text("Sunita Parajuli"),
              subtitle: Text("Hello man.2d"),
            ),
            ListTile(
              leading:      CircleAvatar(
                radius: sizeOfImage + 4,
                backgroundColor: Colors.deepOrange,
                child: CircleAvatar(
                  radius: sizeOfImage + 2,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: sizeOfImage,
                    backgroundImage: AssetImage("assets/2.jpg"),
                  ),
                ),
              ),
              title: Text("Laxmi Parajuli"),
              subtitle: Text("This is the last message.2d"),
            ),   ListTile(
              leading:      CircleAvatar(
                radius: sizeOfImage + 4,
                backgroundColor: Colors.deepOrange,
                child: CircleAvatar(
                  radius: sizeOfImage + 2,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: sizeOfImage,
                    backgroundImage: AssetImage("assets/3.jpg"),
                  ),
                ),
              ),
              title: Text("Tesula Parajuli"),
              subtitle: Text("This is the last message.2d"),
            ),
            ListTile(
              leading:      CircleAvatar(
                radius: sizeOfImage + 4,
                backgroundColor: Colors.deepOrange,
                child: CircleAvatar(
                  radius: sizeOfImage + 2,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: sizeOfImage,
                    backgroundImage: AssetImage("assets/0.jpeg"),
                  ),
                ),
              ),
              title: Text("Sulav Parajuli"),
              subtitle: Text("This is the last message.2d"),
            ),
            ListTile(
              leading:      CircleAvatar(
                radius: sizeOfImage + 4,
                backgroundColor: Colors.deepOrange,
                child: CircleAvatar(
                  radius: sizeOfImage + 2,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: sizeOfImage,
                    backgroundImage: AssetImage("assets/1.jpg"),
                  ),
                ),
              ),
              title: Text("Sunita Parajuli"),
              subtitle: Text("Hello man.2d"),
            ),
            ListTile(
              leading:      CircleAvatar(
                radius: sizeOfImage + 4,
                backgroundColor: Colors.deepOrange,
                child: CircleAvatar(
                  radius: sizeOfImage + 2,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: sizeOfImage,
                    backgroundImage: AssetImage("assets/2.jpg"),
                  ),
                ),
              ),
              title: Text("Laxmi Parajuli"),
              subtitle: Text("This is the last message.2d"),
            ),   ListTile(
              leading:      CircleAvatar(
                radius: sizeOfImage + 4,
                backgroundColor: Colors.deepOrange,
                child: CircleAvatar(
                  radius: sizeOfImage + 2,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: sizeOfImage,
                    backgroundImage: AssetImage("assets/3.jpg"),
                  ),
                ),
              ),
              title: Text("Tesula Parajuli"),
              subtitle: Text("This is the last message.2d"),
            ),
            ListTile(
              leading:      CircleAvatar(
                radius: sizeOfImage + 4,
                backgroundColor: Colors.deepOrange,
                child: CircleAvatar(
                  radius: sizeOfImage + 2,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: sizeOfImage,
                    backgroundImage: AssetImage("assets/0.jpeg"),
                  ),
                ),
              ),
              title: Text("Sulav Parajuli"),
              subtitle: Text("This is the last message.2d"),
            ),
            ListTile(
              leading:      CircleAvatar(
                radius: sizeOfImage + 4,
                backgroundColor: Colors.deepOrange,
                child: CircleAvatar(
                  radius: sizeOfImage + 2,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: sizeOfImage,
                    backgroundImage: AssetImage("assets/1.jpg"),
                  ),
                ),
              ),
              title: Text("Sunita Parajuli"),
              subtitle: Text("Hello man.2d"),
            ),
            ListTile(
              leading:      CircleAvatar(
                radius: sizeOfImage + 4,
                backgroundColor: Colors.deepOrange,
                child: CircleAvatar(
                  radius: sizeOfImage + 2,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: sizeOfImage,
                    backgroundImage: AssetImage("assets/2.jpg"),
                  ),
                ),
              ),
              title: Text("Laxmi Parajuli"),
              subtitle: Text("This is the last message.2d"),
            ),   ListTile(
              leading:      CircleAvatar(
                radius: sizeOfImage + 4,
                backgroundColor: Colors.deepOrange,
                child: CircleAvatar(
                  radius: sizeOfImage + 2,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: sizeOfImage,
                    backgroundImage: AssetImage("assets/3.jpg"),
                  ),
                ),
              ),
              title: Text("Tesula Parajuli"),
              subtitle: Text("This is the last message.2d"),
            ),

          ],
        ),
      ),
    );
  }
}

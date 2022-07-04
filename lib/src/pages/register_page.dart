import 'package:flutter/material.dart';
import 'package:ui_login_register/fluttericon.dart';
import 'package:ui_login_register/src/widgets/app_outlinebutton.dart';
import 'package:ui_login_register/src/widgets/app_textfield.dart';
import 'package:ui_login_register/themes.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: ListView(
          children: [
            Stack(
              children: [
                IconButton(
                  icon: Icon(Icons.keyboard_arrow_left),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            Text(
              "Change Password",
              style: TextStyle(color: Colors.black38),
              textAlign: TextAlign.right,
            ),
            Text(
              "Profile",
              style: TextStyle(color: Colors.black, fontSize: 25),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 25),
            Text(
              " ",
              style: TextStyle(color: Colors.black38),
              textAlign: TextAlign.center,
            ),
            CircleAvatar(
              radius: 55,
              backgroundColor: Color(0xffFDCF09),
              child: CircleAvatar(
                radius: 50,
                backgroundImage:
                    AssetImage('D:\showcase\register page\assets\register.jpg'),
              ),
            ),
            SizedBox(height: 25),
            Text(
              " ",
              style: TextStyle(color: Colors.black38),
              textAlign: TextAlign.center,
            ),
            TextButton.icon(
              icon: const Icon(Icons.camera),
              label: const Text('Add a pic'),
              onPressed: () {},
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'User name',
              ),
            ),
            SizedBox(height: 30),
            Text(
              " ",
              style: TextStyle(color: Colors.black38),
              textAlign: TextAlign.center,
            ),
            Text(
              "About Me",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Themes.colorHeader,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 12),
            Text(
              " ",
              style: TextStyle(color: Colors.black38),
              textAlign: TextAlign.center,
            ),
            TextFormField(
                minLines: 1,
                maxLines: 5, // allow user to enter 5 line in textfield
                keyboardType: TextInputType
                    .multiline // user keyboard will have a button to move cursor to next line

                ),
            SizedBox(height: 30),
            Text(
              " ",
              style: TextStyle(color: Colors.black38),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 12),
            FlatButton(
              color: Themes.color2,
              padding: EdgeInsets.all(8),
              child: Text(
                "Temporarily disable my account",
                style: TextStyle(color: Colors.black38, fontSize: 18),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(4),
                ),
              ),
              onPressed: () {},
            ),
            SizedBox(height: 12),
            FlatButton(
              color: Themes.color2,
              padding: EdgeInsets.all(8),
              child: Text(
                "Delete my account",
                style: TextStyle(color: Colors.black38, fontSize: 18),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(4),
                ),
              ),
              onPressed: () {},
            ),
            SizedBox(height: 12),
            FlatButton(
              color: Themes.colorPrimary,
              padding: EdgeInsets.all(4),
              child: Text(
                "Save",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(2),
                ),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isloggedin = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.1,
        title: Text("Welcome Back !"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            Text(
              "Welcome to Licious. Manage your orders, rewards, addresses & other details.",
              style: TextStyle(
                  fontFamily: GoogleFonts.poppins().fontFamily, fontSize: 13),
            ),
            SizedBox(
              height: 8,
            ),
            !isloggedin
                ? ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/loginpage");
                    },
                    child: Text("Login/Sign Up"),
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 17)),
                  )
                : Container(),
            SizedBox(
              height: 28,
            ),
            Text(
              "FCFood Zone",
              style: TextStyle(
                  fontSize: 19,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 4,
            ),
            ListTile(
              leading: Icon(CupertinoIcons.square_list),
              title: Text("Blogs"),
              trailing: Icon(
                CupertinoIcons.greaterthan,
                size: 18,
              ),
              onTap: () {},
            ),
            Divider(
              height: 1,
            ),
            ListTile(
              leading: Icon(CupertinoIcons.doc_plaintext),
              title: Text("Terms & Conditions"),
              trailing: Icon(
                CupertinoIcons.greaterthan,
                size: 18,
              ),
              onTap: () {},
            ),
            Divider(
              height: 1,
            ),
            ListTile(
              leading: Icon(CupertinoIcons.question_circle),
              title: Text("FAQs"),
              trailing: Icon(
                CupertinoIcons.greaterthan,
                size: 18,
              ),
              onTap: () {},
            ),
            Divider(
              height: 1,
            ),
            ListTile(
              leading: Icon(CupertinoIcons.lock_circle),
              title: Text("Privacy Policy"),
              trailing: Icon(
                CupertinoIcons.greaterthan,
                size: 18,
              ),
              onTap: () {},
            ),
            Divider(
              height: 1,
            )
          ],
        ),
      ),
    );
  }
}

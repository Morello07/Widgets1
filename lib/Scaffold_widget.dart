import 'package:flutter/material.dart';
import 'package:widget_1/datetimer.dart';
import 'package:widget_1/dialog.dart';
import 'package:widget_1/input.dart';

class ScaffoldWidget extends StatelessWidget {
  const ScaffoldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title: Text("Sample code"),
 
        leading: IconButton(onPressed: () {},
        icon: Icon(Icons.home),
          ),
          actions: [
            Text("danadyaksa"),
            IconButton(
              onPressed: () {}, 
              icon: Icon(Icons.more_vert),
              ),
          ],
          backgroundColor: Color.fromARGB(255, 29, 49, 199),
          foregroundColor: Color.fromARGB(255, 246, 247, 221)
        ),
        body: Column(
          children: [
            SizedBox(height: 25,),
            const Center(
              child: Text(
                "You must be a good person",
              style: TextStyle(
                fontSize: 35,
                color: Color.fromARGB(255, 54, 76, 244),
                fontWeight: FontWeight.bold,
                ),
              ),
            ),
         
            SizedBox(height: 25,),
            InputWidget(),
            SizedBox(height: 25,),
            DialogWidget(),
            DatetimerWidget(title: 'home',),

          ],
        ),
        
        bottomNavigationBar: BottomNavigationBar (
          selectedItemColor: const Color.fromARGB(255, 54, 89, 244),
          unselectedItemColor: Colors.grey,
          currentIndex: 0,
          items: const [

            BottomNavigationBarItem(
              icon: Icon (
                Icons.home,
              ),
              label: "Home",
              ),

            BottomNavigationBarItem(
              icon: Icon (Icons.card_giftcard),
              label : "Profil",
              ),

            BottomNavigationBarItem(
              icon: Icon (Icons.verified_user_sharp),
              label : "User",
              ),

            BottomNavigationBarItem(
              icon: Icon (Icons.logout_outlined),
              label: "Logout",
              )
          ],
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: "Increment value",
          child: Icon(Icons.plus_one),
          ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  
    
  }
}
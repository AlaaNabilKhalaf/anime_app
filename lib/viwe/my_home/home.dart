import 'package:anime_app/my_provider/bottom_navigation.dart';
import 'package:anime_app/viwe/my_widgets/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Consumer<bottom_navigation>(
      builder:  (context, provider, _){
        return   Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal.shade700,
            elevation: 15,
            foregroundColor: Colors.white,
            //  textTheme: Typography.tall2014 ,
            title: Text('  Anime App',
              style: TextStyle(
                inherit: true,
                color: Colors.white,
                fontSize: 30,
              ),),
            actions: [
              IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                  return text_field() ;
                }));
              }, icon: Icon( Icons.search,size: 34,) ),
              IconButton(onPressed: (){}, icon: Icon( Icons.lightbulb_outline_sharp,
                size: 32,) ),
            ],
            // titleTextStyle: TextStyle(
            //   inherit: true,
            //
            // ),
          ),
          body: provider.screens[provider.currntindx],
          bottomNavigationBar:  BottomNavigationBar(
            currentIndex: provider.currntindx,
            onTap: (int index){
              provider.changeindx(index);
            },
            backgroundColor: Colors.teal.shade700,
            selectedItemColor: Colors.white,
            elevation: 10,
            items: provider.items,selectedLabelStyle: TextStyle(fontSize: 16,),iconSize: 25,
            unselectedLabelStyle: TextStyle(fontSize: 13),

          ),


        );
      },


    );
  }
}

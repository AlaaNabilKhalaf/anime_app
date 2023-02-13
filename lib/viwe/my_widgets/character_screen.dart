import 'package:anime_app/viwe/my_widgets/character_photo.dart';
import 'package:anime_app/viwe/my_widgets/search_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class character_screen extends StatelessWidget {
  character_screen({
    required this.image,
    required this.text1 ,
    required this.index ,
    required this.name ,
  required this.text2}) ;

  List<String> image ;
  List<String> text1 ;
  int index ;
  List<String> text2;
  List<String> name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
     body: Center(
        child: SingleChildScrollView(
          child: Expanded(
            child: Container(
            //  clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  SizedBox(child: GestureDetector(child: Image.asset('${image[index]}', fit: BoxFit.cover,),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                        return photo(image: image, index: index);
                      }));
                    },),
                  height: 350,),
                  SizedBox(height: 5,),
                  Center(child: Text('${name[index]}',style: TextStyle(fontSize: 35,color: Colors.teal.shade700),)),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      '${text1[index]}',style: TextStyle(
                      fontSize: 25,
                    ),),
                  ),
                  SizedBox(height: 15,),
                  Text('${text2[index]}',style: TextStyle(fontSize: 30, color: Colors.teal.shade500),)
                ],
              ),
            ),
          ),
        )
      ),
    );
  }
}

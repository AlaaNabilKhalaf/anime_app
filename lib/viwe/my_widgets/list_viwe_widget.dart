import 'package:anime_app/viwe/my_widgets/character_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class list_viwe extends StatelessWidget {
  list_viwe({required List <String> this.images ,
    required List <String> this.big_texts ,
    required List<String> this.small_texts ,
    required List<String> this.names
  }) ;

  List<String> images;
  List<String> big_texts;
  List<String> small_texts ;
  List<String> names ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.separated(itemBuilder: (context,index)=> SizedBox(
        height: 155,
        child: GestureDetector(
         onTap: (){
           Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
             return character_screen(
               image: images,
               text1: big_texts,
               index: index ,
             text2: small_texts,
             name: names,);
           }));
         },
          // character_screen(image: images, text: big_texts, index: index,)()
          child: Container(
            child: Row(
              children: [
                Container(
                  height: 145,
                width: 95,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset('${images[index]}',
                    fit: BoxFit.cover,)),
                SizedBox(width: 10,),
                Expanded(
                  child: Column(
                    children: [
                      Text('${names[index]}',
                      style:TextStyle(
                        fontSize: 30,
                        color: Colors.teal.shade800
                      ),),
                      SizedBox(
                        height: 8,
                      ),
                      Expanded(
                        child: Text('${big_texts[index]}',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,),
                      ),
                      Text('${small_texts[index]}',
                      style: TextStyle(
                        color: Colors.teal,
                        fontSize: 18,
                      ),
                      maxLines: 1,)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      )
          , separatorBuilder: (context,index)=> const Divider(
            height: 20,
            indent: 35,
            endIndent: 35,
              thickness: 1,
            color: Colors.teal
          ), itemCount: 5),
    );;
  }
}

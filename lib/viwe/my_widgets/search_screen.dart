import 'package:anime_app/my_provider/bottom_navigation.dart';
import 'package:anime_app/viwe/my_home/home.dart';
import 'package:anime_app/viwe/my_widgets/list_viwe_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

late String text ;
class text_field extends StatelessWidget {
   text_field({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<bottom_navigation>(
      builder: (context,provider,_)=>Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal.shade700,
          leading: IconButton(
            onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return MyHome();
              }));
            } ,
            icon: Icon( Icons.arrow_back_ios),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(height: 30,)
              ,Container(
                child: TextFormField(
                    onChanged: (String value){
                      text = value;
                    },
                    decoration: InputDecoration(
                      label: Text('search',
                        style: TextStyle(
                          color: Colors.teal,
                          fontSize: 25,
                        ),),
                      hintText: 'Please enter your anime',
                      prefixIcon: Icon(Icons.search,color: Colors.teal,),
                      enabledBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: BorderSide(color: Colors.teal.shade700,width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: BorderSide(color: Colors.teal.shade900, width: 2),
                      ),

                    )
                ),
              ),
              Expanded(
                child: list_viwe(
                  images: provider.black_clovr_images,
                  names: provider.black_clovr_names,
                  big_texts: provider.black_clovr_big_text,
                  small_texts: provider.black_clovr_small_text,

                ),
              ),

            ],
          ),
        ),
      ),

    );
  }
}

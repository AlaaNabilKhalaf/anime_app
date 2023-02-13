import 'package:anime_app/my_provider/bottom_navigation.dart';
import 'package:anime_app/viwe/my_widgets/list_viwe_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class hunter extends StatelessWidget {
  const hunter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<bottom_navigation>(builder: (context,provider,_){
      return list_viwe(images: provider.hunter_images,
          big_texts: provider.hunter_big_text,
          small_texts: provider.hunter_small_text,
          names: provider.hunter_names);
    });
  }
}

import 'package:anime_app/my_provider/bottom_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../my_widgets/list_viwe_widget.dart';


class narouto extends StatelessWidget {
  const narouto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<bottom_navigation>(
        builder: (ctx,provider,_) {
          return list_viwe(images: provider.narouto_imags,
              big_texts: provider.N_big_text,
              small_texts: provider.N_small_text,
          names: provider.NaroutoNames,);

    });
  }
}

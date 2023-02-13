import 'package:flutter/cupertino.dart';

class photo extends StatelessWidget {
   photo({required this.image, required this.index}) ;
List image ;
int index ;
  @override
  Widget build(BuildContext context) {
    return Image.asset('${image[index]}');
  }
}

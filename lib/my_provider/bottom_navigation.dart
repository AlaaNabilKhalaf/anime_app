import 'package:anime_app/viwe/black_clover/black_clover_screen.dart';
import 'package:anime_app/viwe/narouto/narouto_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../viwe/hunter/hunter_screen.dart';

class bottom_navigation extends ChangeNotifier {
int currntindx = 0 ;
  String hunterImage = 'assets/icons/IMG-20200121-WA0095.jpg';
  changeindx(int index){
    currntindx = index;
    notifyListeners();

  }


  List<BottomNavigationBarItem> items = [
     BottomNavigationBarItem(
    icon: Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(80)
      ) ,
      height: 45,width: 60,
      child: Image.asset('assets/icons/FB_IMG_15931113971876253.jpg',fit: BoxFit.cover),
    ),
       label: 'Naruto',),

      // icon: ImageIcon(AssetImage('assets/icons/FB_IMG_15931113971876253.jpg',),size: 50

        // icon: Icon(
        //   Icons.leak_remove_sharp,
        // ),

     BottomNavigationBarItem(
       icon:  Container(
         height: 45,width: 60,
         decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(80)
         ) ,
         clipBehavior: Clip.antiAlias,
         child:  Image.asset('assets/black_clover_images/FB_IMG_15937848206942587.jpg',fit: BoxFit.cover
           ),
       ),
        label: 'BLACK CLOVER'),
     BottomNavigationBarItem(
      icon:  Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80)
        ) ,
        child:
        Image.asset('assets/icons/IMG-20200121-WA0095.jpg',fit: BoxFit.cover,),
        height: 45,width: 60,
      ),
        label: 'HUNTER'),
  ];

List<String> narouto_imags = [
  'assets/imags/FB_IMG_1589512258355.jpg',
  'assets/imags/FB_IMG_15936064600927671.jpg',
  'assets/imags/FB_IMG_1589484005111.jpg',
  'assets/imags/FB_IMG_1589484011254.jpg',
  'assets/imags/FB_IMG_1589484014408.jpg'
];


List<String> NaroutoNames = [' Naruto Uzumaki', 'Gaara of the Desert', 'Minato Namikaze', 'Itachi Uchiha' , 'Kakashi Hatake'];



List<String> N_big_text = ['is the title character and main protagonist of the franchise.'
    ' He was the first character created by Kishimoto during the conception of the series and was designed with many traits'
    ' from other shōnen characters.[7] He is often shunned by the Konohagakure villagers, as he is the host of Kurama,'

  ," is a character in the Naruto manga and anime series created by Masashi Kishimoto."
      " Originally debuting as an antagonist, Gaara is a shinobi affiliated with Sunagakure and is the son "
      "of Sunagakure's leader, the Fourth Kazekage. He was born as a demon's"
      " host as part of his father's intention to have a weapon to restore their village",

  " is one of the main supporting characters in the Naruto universe. He was the Fourth Hokage of the Hidden Leaf Village."
      " He is the husband of Kushina Uzumaki, and the father of Naruto Uzumaki.",

  "is a character in the Naruto manga and anime series created by Masashi Kishimoto."
      " Itachi is the older brother of Sasuke Uchiha, and is responsible for killing all the members of their "
      "clan, sparing only Sasuke. He appears working as a terrorist from the organisation Akatsuki "
      "and serves as Sasuke's greatest enemy",

  " is a fictional character in the Naruto manga and anime series created by Masashi Kishimoto."
      " In the story, Kakashi is the teacher of Team 7, consisting of the series' primary characters,"];



List<String> N_small_text = ['The Hero','Not a main character','Not a main character','Main character','Main character'];


List<String> hunter_images = [
  'assets/hunter_images/IMG-20200112-WA0839.jpg',
  'assets/hunter_images/IMG-20200720-WA0066.jpg',
  'assets/hunter_images/FB_IMG_1595012658920.jpg',
  'assets/hunter_images/png-clipart-kurapika-hunter-x-hunter-gon-freecss-leorio-hisoka-kurapika-face-manga-thumbnail.png',
  'assets/hunter_images/HD-wallpaper-feitan-hunter-hxh-phantom-troupe-spider-torturer-troupe.jpg',
];


List<String> hunter_names = ['Gon Freecss','Killua Zoldyck','Hisoka Morow', 'Kurapika' ,'Feitan'];


List<String> hunter_big_text =[
  " is an athletic, naïve, and friendly boy."
    " Having spent a lot of time in the woods as a child, he gets along very well with animals and has superhuman "
    "senses such as heightened sense of smell and sight, as well as very keen taste. Raised by Mito, Gon wants to become "
    "a Hunter in order to find his father,"
    " Ging, who is a Hunter as well.",


  " is initially introduced as a cheeky, "
      "cheerful and mischievous kid who befriends Gon during the Hunter Exam. "
      "His ruthlessness and aptitude in killing show the other side of him — deadly, violent, and bloodthirsty. "
      "A member of the famous Zoldyck Family of assassins, Killua has been trained to be an assassin since birth and "
      "conditioned to possess extreme tolerance for poison, "
      "electricity and overall pain. ",


  " is a magician and serial killer who combines magic tricks with violence,"
      " and delights in battling those he considers strong to the point of sexual arousal.[ch. 5, 61] "
      "He is deceitful, playful,"
      " and narcissistic by nature, acting only in his own self-interest. ",


  " is the sole survivor of the Kurta Clan (クルタ族, Kuruta-zoku), a race with treasured "
      "irises that turn scarlet in times of anger or emotional turmoil.[ch. 7] Four years before the series,"
      " the entire Kurta clan was eradicated by a criminal group known as the Phantom Troupe[ch. 2], who desecrated the"
      " Kurta's bodies by stealing their scarlet eyes,"
      " thereafter selling them on the black market.",


  " is member #2 of the Phantom Troupe. His physical strength ranked fifth among the group. "
      "After defeating Zazan, Feitan became the de facto leader of the Troupe until Chrollo's return"
];


List<String> hunter_small_text = ['The Hero','The Hero','Not a main character', 'Main character', 'Not a main character'];



List<String> black_clovr_images = [
  'assets/black_clover_images/IMG-20200717-WA0718.jpg',
  'assets/black_clover_images/IMG-20200717-WA0719.jpg',
  'assets/black_clover_images/IMG-20200717-WA0714.jpg',
  'assets/black_clover_images/IMG-20200717-WA0720.jpg',
  'assets/black_clover_images/IMG-20200717-WA0722.jpg',
];

List<String> black_clovr_names = ['Asta','Yami Sukehiro', 'Luck Voltia','Noelle Silva','Vanessa Enoteca'];

List<String> black_clovr_big_text = [" is an orphan who was left under "
    "the care of a church by his mother during his infancy. He has high aspirations of"
    " becoming the next Wizard King. He possesses no magical power, but he overcame his weakness by "
    "increasing his physical strength, which allowed him to join the Magic Knight Squad known as the Black Bulls"
    " after acquiring a "
    "five-leaf clover grimoire where the Anti-Magic devil Liebe resides.",


  "is the captain of the Black Bulls, who are regarded as the worst Magic "
      "Knight Squad due to unorthodox and unstable members, being both physically strong and intimidating to"
      " the point of giving death threats to anyone who annoys him",


" is a member of the Black Bulls, a borderline psychopath who uses Lightning Magic and "
    "is always smiling regardless of circumstances, giving him the nickname Luck the Cheery Berserker. "
    "He fights by creating gloves and boots to increase his speed and launch lightning balls.",


"is a silver-haired member of the Black Bulls and the"
    " fourth-born child of the Clover Kingdom's royal family, House Silva. "
    "While incredibly powerful as a royal, possessing a vast amount of mana, Noelle initially had trouble "
    "controlling her Water Magic with her older brother Nozel acting resentful to her as his way of"
    " protecting her from both harm and the truth behind the death of their mother Acier",


" is a very laidback pink-haired witch of the Black Bulls. "
    "During Vanessa's childhood, she is estranged from her mother, the Queen of the Witches,"
    " when she tried awaken Vanessa's ability to alter a person's"
    " destiny by keeping her in captivity for most of her life.",];

List<String> black_clovr_small_text = [
  'The Hero',
  'Main character','Not a main character',
  'Main character','Not a main character'];

List<Widget> screens = [
  narouto(),
  black_clover(),
  hunter(),


];
}

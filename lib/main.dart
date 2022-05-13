

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project1/midbody.dart';
//import 'package:lamp_bottom_navigation/lamp_bottom_navigation.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Expansion Panel List',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState()
  {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black38,
        appBar: AppBar(
          //title: Text("Flutter AppBar Example"),
          backgroundColor: Colors.black87,
          toolbarHeight: 60,
          leading:IconButton(
           onPressed: (){},
            icon:const Icon(Icons.camera_alt_outlined,size:32)
          ),
          actions: <Widget>[
          IconButton(icon: const Icon(
          Icons.mail_outlined,
          color: Colors.white,
        ),
      onPressed: () {
      },
    )
    ],


          actionsIconTheme: const IconThemeData(size: 32,),

        ),

        body:Container(
          child:Column(
            children: [story(),const PostsCol()],
          )



        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: const Icon(Icons.add),
        onPressed: () {},
        shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(50.0)),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 6.0,

        child: Row(


          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.home_outlined),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.search_outlined),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.favorite_border_outlined),
              onPressed: () {},
            ),
            


            CircleAvatar(
              radius: 30,
              backgroundColor:Colors.white,
            child: ClipRRect(

              borderRadius: BorderRadius.circular(15),
              child:CircleAvatar(
                radius: 15,

             child:(Image.network('https://avatars.mds.yandex.net/i?id=a3b9ee90e53aecb0496311d67d3f056d-5348290-images-thumbs&n=13')),
             ),
            ))
          ],

        ),

      ),





    );
  }
}

class story extends StatelessWidget {
  //const story({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,

      child:Row(crossAxisAlignment: CrossAxisAlignment.start,
          children:[storyrow0(),
              storyrow(name:"Lifo", avatarurl: 'https://avatars.mds.yandex.net/i?id=a3b9ee90e53aecb0496311d67d3f056d-5348290-images-thumbs&n=13'),
              storyrow(name:"Lipa", avatarurl: 'https://avatars.mds.yandex.net/i?id=3ba8de72635f56cff08629c90e49a537-4780598-images-thumbs&n=13'),
              storyrow(name:"Jake", avatarurl: 'https://avatars.mds.yandex.net/i?id=2a00000179df4fd7fa93837cc073e88d767c-4033208-images-thumbs&n=13'),
              storyrow(name:"Tsar", avatarurl: 'https://avatars.mds.yandex.net/i?id=48c4356977c9c0a1650ab6c7a18ee1bf-5401700-images-thumbs&n=13'),
              storyrow(name:"Lisa", avatarurl: 'https://avatars.mds.yandex.net/i?id=decab2e1a048beebf111c9778d98a62b-5869856-images-thumbs&n=13'),
              storyrow(name:"Lipo", avatarurl: 'https://avatars.mds.yandex.net/i?id=87ee770ab2d63fadb7d99b75af587e79-4283547-images-thumbs&n=13'),
              storyrow(name:"Mow", avatarurl: 'https://avatars.mds.yandex.net/i?id=76008d019d3c1d7b742ecf9232263e8a-3129389-images-thumbs&n=13'),
              storyrow(name:"Crewz", avatarurl: 'https://avatars.mds.yandex.net/i?id=d1c10226a8cb24eb0aa2819095e3cf67-5287757-images-thumbs&n=13'),
              storyrow(name:"Nmi", avatarurl: 'https://avatars.mds.yandex.net/i?id=c4fde52b3fbdf4dad29e069782a8f333-5628335-images-thumbs&n=13'),
              storyrow(name:"Sippi", avatarurl: 'https://avatars.mds.yandex.net/i?id=dc780b63c16c5d0d653c275efa2b8208-4452382-images-thumbs&n=13'),
              storyrow(name:"Bao", avatarurl: 'https://avatars.mds.yandex.net/i?id=26a97dcf1defa39459cd76e4d7a6732e-5879159-images-thumbs&n=13'),
              storyrow(name:"Masao", avatarurl: 'https://avatars.mds.yandex.net/i?id=56c7e4297dc4606cacded99e8e44c131-5514672-images-thumbs&n=13')])





        );
  }
}

class storyrow extends StatelessWidget {
  late final String avatarurl;
  late final String name;

   storyrow({required this.name, required this.avatarurl});
  //const storyrow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        padding:const EdgeInsets.all(8),
        child:Column
        ( 
          children: [

            CircleAvatar(
              radius :30,
              backgroundColor : Colors.white,

                child:CircleAvatar(
                    radius: 28.5,
                    foregroundImage: NetworkImage(this.avatarurl))),

      InkWell(
        onTap:(){},child:Text(this.name,style: TextStyle(fontSize: 13, color: const Color.fromARGB(255,255,255,255))),)





        ],

      )

    );
  }
}

class storyrow0 extends StatelessWidget {


  //const storyrow0({Key? key}) : super(key: key);




  @override
  Widget build(BuildContext context) {

    return Container(

        padding:const EdgeInsets.all(8),
        height: 100,
      child:Column
        (

          children: const [
          CircleAvatar(radius: 30,
          backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMEHLuz6Ph7-FVJql5CfOs7_uBKeEnU_5PDg&usqp=CAU")),
          Text("Add",style: TextStyle(fontSize: 13, color: Color.fromARGB(255,255,255,255)),),
]


    )
    );
  }
}





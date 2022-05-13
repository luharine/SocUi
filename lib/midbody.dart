
import 'dart:math';

import 'package:flutter/material.dart';



class Post1 extends StatelessWidget {
  const Post1 ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10),

        ),
        height: MediaQuery.of(context).size.height*.39,
        width:MediaQuery.of(context).size.width*(.85),
    padding: const EdgeInsets.all(1),



    child: ClipRRect(

    borderRadius: BorderRadius.circular(23),



        child:Stack(




          children:[

            (Image.network("https://i.postimg.cc/8cM71nsm/post1.jpg")),topPost(userId:"Lifo_jacobson", loc: "Manhattan,NYC"),



        Align(
            alignment: Alignment.bottomCenter,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30.0),

              child:
              Container(color:Colors.transparent.withOpacity(.3),
                  width:MediaQuery.of(context).size.width*(.7),

              //padding: const EdgeInsets.all(2),
              child:const PostBtm()
            ),

        ))
          ]
          //topcard and bottom card
        )

    ));
  }
}

class Post2 extends StatelessWidget {
  const Post2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10),

        ),
        height: MediaQuery.of(context).size.height*.39,
        width:MediaQuery.of(context).size.width*(.85),
        padding: const EdgeInsets.all(1),



        child: ClipRRect(

            borderRadius: BorderRadius.circular(23),



            child:Stack(




                children:[

                  (Image.network("https://i.postimg.cc/Fsy9qs1D/Portrait-of-cute-casual-funny-black-girl-in-glasses-wearing-turquoise-apron-white-t-shirt-touches-h.jpg")),topPost(userId:"Lifo_jacobson", loc: "Manhattan,NYC"),



                  Align(
                      alignment: Alignment.bottomCenter,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),

                        child:
                        Container(color:Colors.transparent.withOpacity(.3),
                            width:MediaQuery.of(context).size.width*(.7),

                            //padding: const EdgeInsets.all(2),
                            child:const PostBtm()
                        ),

                      ))
                ]
              //topcard and bottom card
            )

        ));
  }
}





class Post3 extends StatelessWidget {
  const Post3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10),

        ),
        height: MediaQuery.of(context).size.height*.39,
        width:MediaQuery.of(context).size.width*(.85),
        padding: const EdgeInsets.all(1),



        child: ClipRRect(

            borderRadius: BorderRadius.circular(23),



            child:Stack(




                children:[

                  (Image.network("https://i.postimg.cc/QtCCZLvV/Pensive-black-girl-props-her-face-with-her-hand-thinks-and-makes-decision-Casual-young-stylized-gir.jpg")),topPost(userId:"Lifo_jacobson", loc: "Manhattan,NYC"),



                  Align(
                      alignment: Alignment.bottomCenter,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),

                        child:
                        Container(color:Colors.transparent.withOpacity(.3),
                            width:MediaQuery.of(context).size.width*(.7),

                            //padding: const EdgeInsets.all(2),
                            child:const PostBtm()
                        ),

                      ))
                ]
              //topcard and bottom card
            )

        ));
  }
}







class topPost extends StatelessWidget {
  //const topPost({Key? key}) : super(key: key);
  final String userId;
  final String loc;

  var myMenuItems = <String>['Home', 'Profile', 'Setting', 'Privacy', 'Contact'];
  topPost({required this.userId,required this.loc });
  @override
  Widget build(BuildContext context) {
    return Container(



      padding:EdgeInsets.all(8),
     height:47,

      child:Row(
          mainAxisAlignment: MainAxisAlignment.start,



          children: [

        //   const CircleAvatar(
        //
        //     radius: 23.5,
        //     foregroundImage: NetworkImage("https://avatars.mds.yandex.net/i?id=a3b9ee90e53aecb0496311d67d3f056d-5348290-images-thumbs&n=13"))
        // ,
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(7)),//add border radius here
          child: Image.network('https://avatars.mds.yandex.net/i?id=a3b9ee90e53aecb0496311d67d3f056d-5348290-images-thumbs&n=13'),//add image location here
        ),

        // ClipRRect(
        //   borderRadius: BorderRadius.circular(20.0),//or 15.0
        //   child: Container(
        //     height: 70.0,
        //     width: 70.0,
        //     color: Color(0xffFF0E58),
        //     child: Image.network("https://avatars.mds.yandex.net/i?id=a3b9ee90e53aecb0496311d67d3f056d-5348290-images-thumbs&n=13")),
        //   ),

        Column(

            crossAxisAlignment: CrossAxisAlignment.start,



    children: [
                  Text(userId,style:const TextStyle(color: Colors.white,fontSize:14,fontWeight: FontWeight.bold)),

                           Text(loc,style:const TextStyle(color: Colors.white,fontSize:10,fontWeight: FontWeight.normal))
    ],),const SizedBox(
              width: 130,
              height: 47,
            ),
            PopupMenuButton(

              color: Colors.grey.withOpacity(.5),
              offset: const Offset(0,15),





    shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              onSelected: (value) {
                // your logic
              },
              itemBuilder: (BuildContext bc) {
                return const [
                  PopupMenuItem(
                    child: Text("Edit"),
                    value: '/hello',
                  ),
                  PopupMenuItem(
                    child: Text("Add to favorites"),
                    value: '/about',
                  ),
                  PopupMenuItem(

                    child: Text("Report"),
                    value: '/contact',
                  )
                ];
              },
            )
            ]),
      );
  }
}

class PostBtm extends StatelessWidget {
  const PostBtm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,

      child:Column(
         mainAxisAlignment: MainAxisAlignment.end,

        children:[Row(
          mainAxisAlignment: MainAxisAlignment.center,




          children: const [
          like1(),const comment1(),Navsave() ],


      )]
      )




    );
  }
}
class like1 extends StatelessWidget {
  const like1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Row(
        children: [
          IconButton(onPressed:(){}, icon: const Icon(Icons.favorite_border_outlined)),const Text("42k")

        ],
      )
    );
  }
}

class comment1 extends StatelessWidget {
  const comment1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

        child:Row(
          children: [
            IconButton(onPressed:(){}, icon: const Icon(Icons.mode_comment_outlined)),Text("1.4k")

          ],
        )

    );
  }
}

class Navsave extends StatelessWidget {
  const Navsave({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

        child:Row(
          children: [
        Transform.rotate(
        angle: 45* pi / 180,
            child:IconButton(onPressed:(){}, icon: const Icon(Icons.navigation_outlined)))

            ,IconButton(onPressed:(){}, icon: const Icon(Icons.save_alt))

          ],
        )



    );
  }
}

class PostsCol extends StatelessWidget {
  const PostsCol({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return
      Expanded(

      child:SingleChildScrollView(
    scrollDirection: Axis.vertical,
     padding:EdgeInsets.symmetric(vertical:10),
    child:Column(mainAxisAlignment: MainAxisAlignment.start,
    children: const [
      Post1(),SizedBox(height: 10),Post2(),SizedBox(height: 10),Post3(),SizedBox(height: 10),Post1(),SizedBox(height: 10),Post2(),SizedBox(height: 10),Post3()





    ])




      )
    );






  }
}









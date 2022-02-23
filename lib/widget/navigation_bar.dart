import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[BoxShadow(
            color: Colors.black54,
            blurRadius: 13.0,
            offset: Offset(0.0, 0.75)
        )
          ],
      ),
      height:80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:<Widget>[

          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
             children: const [
             Text("Groove", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.green, decoration: TextDecoration.none),),
             Text("Music", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black87, decoration:TextDecoration.none),),

             ],
            ),
          ),

          Row(
            //mainAxisSize: MainAxisSize.min,
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const  _NavBarItem(title: "Upload Song"),
              const SizedBox(width: 30,),
              const _NavBarItem(title: "Upload Artist"),
              const SizedBox(width: 30,),
              const  _NavBarItem(title: "Upload Album"),
              const SizedBox(width: 30,),
              const _NavBarItem(title: "Log Out"),
              const SizedBox(width: 30,),

              Row(
                children: const <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('images/images.jpg'),
                    radius: 20,
                    backgroundColor: Colors.brown,
                  ),

                 // IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down), color: Colors.black87,)
                ],
              ),

            ]
          )

        ],
    ),
    );
  }
}



class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem({required  this.title});


  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        TextButton(
          onPressed: (){

          },
          child: Text(
            title, style: TextStyle(fontSize: 18, color: Colors.black87),
          ),
        ),

        //SizedBox(width: 8,),
        // Container(
        //   height:15,
        //   width:15,
        //   child: Center(child: Text("1", style: TextStyle(fontSize: 12),)),
        //   decoration: BoxDecoration(
        //     color: Colors.grey,
        //     borderRadius: BorderRadius.circular(50),
        //   ),
        // ),

      ],
    );
  }
}




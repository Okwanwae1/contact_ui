import 'package:flutter/material.dart';

class contact extends StatelessWidget {
  const contact({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.white,
       leading: IconButton(onPressed: (){
         Navigator.pop(context);
       },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 30,
          )) ,
      title: const Text(
        'Contact',
        style: TextStyle(color: Colors.black,
        fontWeight: FontWeight.bold, fontSize: 22),
        ),
        actions: [
         IconButton(onPressed: (){},
          icon: Icon(
            Icons.more_horiz_outlined,
            color: Colors.black,
            size: 30,
          ))
        ],
        elevation: 0,
        ),
      
      body: Column(
        children: [
          Container(
        child:  Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              CircleAvatar(backgroundImage: AssetImage('assets/3.jpg'),
              radius: 90,),
              const Text(
                'Daniel Mose',
                style: TextStyle(color: Colors.black,
                fontWeight: FontWeight.bold, fontSize: 22),
                ),
              const Text(
                'Brisbane, Australia',
                style: TextStyle(color: Colors.black,
         fontSize: 14),
        )
            ],
          ),
        ),
      ),
      
      Row(
        children: [
          Text('Mobile',
        style: TextStyle(color: Colors.black,
         fontSize: 14),),
         
         Spacer(),
         IconButton(onPressed: (){},
          icon: Icon(
            Icons.message_rounded,   
            color: Colors.black,
            size: 15,
          )),

          IconButton(onPressed: (){},
          icon: Icon(
            Icons.call,   
            color: Colors.black,
            size: 15,
          ))
        ],
         ),

         Align(
           alignment: Alignment.centerLeft,
           child: Text('+233 233455656',
           style: TextStyle(color: Colors.black,
           fontSize: 14),),
         ),
        
        Row(
        children: [
          Text('Email',
        style: TextStyle(color: Colors.black,
         fontSize: 14),),
         
         Spacer(),
         IconButton(onPressed: (){},
          icon: Icon(
            Icons.mail_outline,   
            color: Colors.black,
            size: 15,
          )), 
        ],
         ),

         Align(
            alignment: Alignment.centerLeft,
           child: Text('Daniel@gmail.com',
           style: TextStyle(color: Colors.black,
           fontSize: 14),),
         ),

         SizedBox(
           height: 15,
         ),

         Align(
           alignment: Alignment.centerLeft,
           child: Text('Group',
           style: TextStyle(color: Colors.black,
           fontSize: 14),),
         ),

         SizedBox(
           height: 12,
         ),

         Align(
           alignment: Alignment.centerLeft,
           child: Text('Uni mate',
           style: TextStyle(color: Colors.black,
           fontSize: 14),),
         ),

         SizedBox(
           height: 15,
         ),

         Align(
           alignment: Alignment.centerLeft,
           child: SizedBox(
             width: double.infinity,
             child: Card(
               elevation: 1,
               child: Text('Accounts linked',
               style: TextStyle(color: Colors.black,
               fontSize: 14, fontWeight: FontWeight.bold),),
             ),
           ),
         ),

         Row(
        children: [
          Text('Telegram',
        style: TextStyle(color: Colors.black,
         fontSize: 14),),
         
         Spacer(),
         Padding(
           padding: const EdgeInsets.all(12),
           child: CircleAvatar(
            backgroundImage: NetworkImage('https://logos-world.net/wp-content/uploads/2021/03/Telegram-Logo.png'),
           ),
         )
         
        ],
         ),

         Row(
        children: [
          Text('Whatsapp',
        style: TextStyle(color: Colors.black,
         fontSize: 14),),
         
         Spacer(),
         Padding(
           padding: const EdgeInsets.all(12),
           child: CircleAvatar(
             
            backgroundImage: NetworkImage('https://cdn3.iconfinder.com/data/icons/cute-flat-social-media-icons-3/512/whatsapp.png'),
           ),
         )
       
        ],
         ),

         Align(
           alignment: Alignment.centerLeft,
           child: SizedBox(
             width: double.infinity,
             child: Card(
               elevation: 1,
               child: Text('More options',
               style: TextStyle(color: Colors.black,
               fontSize: 14, fontWeight: FontWeight.bold),),
             ),
           ),
         ),

         SizedBox(
           height: 15,
         ),

         Align(
           alignment: Alignment.centerLeft,
           child: Text('Shared contact',
           style: TextStyle(color: Colors.black,
           fontSize: 14),),
         ),

         SizedBox(
           height: 15,
         ),

         Align(
           alignment: Alignment.centerLeft,
           child: Text('QR code',
           style: TextStyle(color: Colors.black,
           fontSize: 14),),
         ),

        ],)
        

    );
  }
}
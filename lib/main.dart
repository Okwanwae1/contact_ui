import 'package:contact_ui/contact.dart';
import 'package:contact_ui/dail_pad.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';

void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contact App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white 
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      title: const Text('My Contacts',
      style: TextStyle(color: Colors.black,
        fontWeight: FontWeight.bold, fontSize: 22),),
      automaticallyImplyLeading: false,
      //centerTitle: true,
  
        actions: [ 
          CircleAvatar(backgroundImage: AssetImage('assets/11.jpg')),
        ],

        bottom: PreferredSize(
                  preferredSize: Size.fromHeight(65),
                  child: Column(
                    children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:20, vertical: 3),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                          ),
                          labelText: 'Search',
                          labelStyle: const TextStyle(fontSize: 20),
                          prefixIcon: const Icon(Icons.search),
                         
                        ),
                      ),
                    ),
                    
    
    
                    ]
                  )
                  ),
        elevation: 0,
      ),

     
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
        'Recents',
        style: TextStyle(color: Colors.black,
        fontWeight: FontWeight.bold, fontSize: 14),
        ),
          ),
        
         Card(
          child: Column(
            children: [
              ListTile(
                leading: InkWell(
                  onTap: (){
                    Navigator.push(context,
                   MaterialPageRoute(builder: (context) => const contact()),
                  );
                  },
                  child: CircleAvatar(backgroundImage: AssetImage('assets/2.jpg'))),
                title: InkWell(
                  onTap: (){
                    showBarModalBottomSheet(context: context, builder: (context){
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
              CircleAvatar(backgroundImage: AssetImage('assets/2.jpg'),
              radius: 90,),
              const Text(
                'Anna Marrie',
                style: TextStyle(color: Colors.black,
                fontWeight: FontWeight.bold, fontSize: 22),
                ),
              const Text(
                'Tema,Ghana',
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
           child: Text('Annamarrie@gmail.com',
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
        

    );;
                    });
                  },
                  
                  child: Text('Anna Marrie')
                  ),
                subtitle: Text('+233 27 23 12 345'),
                trailing: IconButton(onPressed: (){
                },
               icon: Icon(Icons.more_horiz)),
              )
            ],
          ),
        ),

        Card(
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage('assets/1.jpg')),
                title:  Text('Tony Bonz'),
                  onTap: (){
                    showBarModalBottomSheet(context: context, builder: (context){
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
              CircleAvatar(backgroundImage: AssetImage('assets/1.jpg'),
              radius: 90,),
              const Text(
                'Tony Bonz',
                style: TextStyle(color: Colors.black,
                fontWeight: FontWeight.bold, fontSize: 22),
                ),
              const Text(
                'Ho,Ghana',
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
           child: Text('+233 23 546 9800',
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
           child: Text('Tony@gmail.com',
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
        

    );;
                 });
               },
                  
                  
                subtitle: Text('+233 23 546 9800'),
                trailing: IconButton(onPressed: (){},
               icon: Icon(Icons.more_horiz)),
              )
            ],
          ),
        ),

        Card(
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage('assets/3.jpg')),
                title: Text('Daniel Mose'),
                subtitle: Text('+613 27 23 12 345'),
                trailing: IconButton(onPressed: (){},
               icon: Icon(Icons.more_horiz)),
               onTap: (){
                 showBarModalBottomSheet(context: context, builder: (context){
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
        

    );;
                 });
               },
               
              )
            ],
          ),
        ),

        Card(
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Contacts',
                  style: TextStyle(color: Colors.black,
        fontWeight: FontWeight.bold, fontSize: 14),),
                trailing: Text(
                  'A',
                  style: TextStyle(color: Colors.black,
        fontWeight: FontWeight.bold, fontSize: 14),)
              )
            ],
          ),
        ),
        
        Card(
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage('assets/2.jpg')),
                title: Text('Anna Marrie'),
                subtitle: Text('+233 27 23 12 345'),
                trailing: IconButton(onPressed: (){},
               icon: Icon(Icons.more_horiz)),
               onTap: (){
                 showBarModalBottomSheet(context: context, builder: (context){
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
              CircleAvatar(backgroundImage: AssetImage('assets/2.jpg'),
              radius: 90,),
              const Text(
                'Anna Marrie',
                style: TextStyle(color: Colors.black,
                fontWeight: FontWeight.bold, fontSize: 22),
                ),
              const Text(
                'Tema, Ghana',
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
           child: Text('+233 27 23 12 345',
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
           child: Text('AnnaMarrie3@gmail.com',
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
        

    );;
                 });
               },
               
              )
            ],
          ),
        ),

        Card(
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage('assets/10.jpg')),
                title: Text('Anita Ferna'),
                subtitle: Text('+61 27 23 12 345'),
                trailing: IconButton(onPressed: (){},
               icon: Icon(Icons.more_horiz)),
               onTap: (){
                 showBarModalBottomSheet(context: context, builder: (context){
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
              CircleAvatar(backgroundImage: AssetImage('assets/10.jpg'),
              radius: 90,),
              const Text(
                'Anita Ferna',
                style: TextStyle(color: Colors.black,
                fontWeight: FontWeight.bold, fontSize: 22),
                ),
              const Text(
                'NYC',
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
           child: Text('+61 27 23 12 345',
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
        

    );;
                 });
               },

               
              )
            ],
          ),
        ),

        Card(
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage('assets/4.jpg')),
                title: Text('Abobo'),
                subtitle: Text('+233 32 42 5667'),
                trailing: IconButton(onPressed: (){},
               icon: Icon(Icons.more_horiz)),
               onTap: (){
                 showBarModalBottomSheet(context: context, builder: (context){
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
              CircleAvatar(backgroundImage: AssetImage('assets/4.jpg'),
              radius: 90,),
              const Text(
                'Abobo',
                style: TextStyle(color: Colors.black,
                fontWeight: FontWeight.bold, fontSize: 22),
                ),
              const Text(
                'Kasoa, Ghana',
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
           child: Text('+233 32 42 5667',
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
           child: Text('Abobo43@gmail.com',
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
        

    );;
                 });
               },
               
              )
            ],
          ),
        ),

        Card(
          child: Column(
            children: [
              ListTile(
                trailing: Text(
                  'B',
                  style: TextStyle(color: Colors.black,
        fontWeight: FontWeight.bold, fontSize: 14),)
              )
            ],
          ),
        ),

        Card(
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage('assets/5.jpg')),
                title: Text('Bernard Mouse'),
                subtitle: Text('+61 27 23 12 342'),
                trailing: IconButton(onPressed: (){},
               icon: Icon(Icons.more_horiz)),
               onTap: (){
                 showBarModalBottomSheet(context: context, builder: (context){
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
              CircleAvatar(backgroundImage: AssetImage('assets/5.jpg'),
              radius: 90,),
              const Text(
                'Bernard Mouse',
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
           child: Text('+61 27 23 12 342',
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
           child: Text('MoseB@gmail.com',
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
        

    );;
                 });
               },
               
              )
            ],
          ),
        ),

        Card(
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage('assets/6.jpg')),
                title: Text('Billy Hitz'),
                subtitle: Text('+233 55 673 3456'),
                trailing: IconButton(onPressed: (){},
               icon: Icon(Icons.more_horiz)),
               onTap: (){
                 showBarModalBottomSheet(context: context, builder: (context){
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
              CircleAvatar(backgroundImage: AssetImage('assets/6.jpg'),
              radius: 90,),
              const Text(
                'Billy Hitz',
                style: TextStyle(color: Colors.black,
                fontWeight: FontWeight.bold, fontSize: 22),
                ),
              const Text(
                'Airport,Ghana',
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
           child: Text('+233 55 673 3456',
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
           child: Text('Billy@gmail.com',
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
           child: Text('SHS mate',
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
        

    );;
                 });
               },
               
              )
            ],
          ),
        ),

        Card(
          child: Column(
            children: [
              ListTile(
                trailing: Text(
                  'C',
                  style: TextStyle(color: Colors.black,
        fontWeight: FontWeight.bold, fontSize: 14),)
              )
            ],
          ),
        ),

        Card(
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage('assets/7.jpg')),
                title: Text('Chris Wood'),
                subtitle: Text('+233 24 345 6666'),
                trailing: IconButton(onPressed: (){},
               icon: Icon(Icons.more_horiz)),
               onTap: (){
                 showBarModalBottomSheet(context: context, builder: (context){
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
              CircleAvatar(backgroundImage: AssetImage('assets/7.jpg'),
              radius: 90,),
              const Text(
                'Chris Wood',
                style: TextStyle(color: Colors.black,
                fontWeight: FontWeight.bold, fontSize: 22),
                ),
              const Text(
                'Kumasi, Ghana',
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
           child: Text('+233 24 345 6666',
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
           child: Text('CWood43@gmail.com',
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
        

    );;
                 });
               },
               
              )
            ],
          ),
        ),
        Card(
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage('assets/8.jpg')),
                title: Text('Cindy'),
                subtitle: Text('+233 32 42 5643'),
                trailing: IconButton(onPressed: (){},
               icon: Icon(Icons.more_horiz)),
               onTap: (){
                 showBarModalBottomSheet(context: context, builder: (context){
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
              CircleAvatar(backgroundImage: AssetImage('assets/8.jpg'),
              radius: 90,),
              const Text(
                'Cindy',
                style: TextStyle(color: Colors.black,
                fontWeight: FontWeight.bold, fontSize: 22),
                ),
              const Text(
                'Cape Coast, Ghana',
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
           child: Text('+233 32 42 5643',
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
           child: Text('Cindy564@gmail.com',
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
        

    );;
                 });
               },
               
              )
            ],
          ),
        ),
        Card(
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage('assets/9.jpg')),
                title: Text('Cobra'),
                subtitle: Text('+233 55 4356 0098'),
                trailing: IconButton(onPressed: (){},
               icon: Icon(Icons.more_horiz)),
               onTap: (){
                 showBarModalBottomSheet(context: context, builder: (context){
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
              CircleAvatar(backgroundImage: AssetImage('assets/9.jpg'),
              radius: 90,),
              const Text(
                'Cobra',
                style: TextStyle(color: Colors.black,
                fontWeight: FontWeight.bold, fontSize: 22),
                ),
              const Text(
                'Ada,Ghana',
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
           child: Text('+233 55 4356 0098',
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
           child: Text('Cobra@gmail.com',
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
        

    );;
                 });
               },
               
              )
            ],
          ),
        ),
        ],

      ),
      
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
floatingActionButton: InkWell(
  child:   FloatingActionButton(
  
          child: Icon(Icons.add),
  
          backgroundColor: Colors.blue[400],
  
          onPressed: () {
  
                 showModalBottomSheet(context: context, builder: (context){
               return 
              Container(
                height: MediaQuery.of(context).size.height / 1.5,
                width: double.infinity,

                child: InkWell(
                  onTap: (){
                    return ;
                  },
                  child: TextField(
                  decoration: InputDecoration(labelText: 'Enter Number'),
                  keyboardType: TextInputType.phone,
                  ),
                ),
                
                //child: dail_pad(),
              );
              
            });
  
          },
  
        ),
),

    // InkWell(
    //               onTap: (){
    //                 showModalBottomSheet(context: context, builder: (context){
    //           return Container(
    //             height: MediaQuery.of(context).size.height / 1.5,
    //             width: double.infinity,
    //             decoration: BoxDecoration(
    //               image: DecorationImage(image: AssetImage('assets/2.jpg'))
    //             ),
    //           );
    //         });
    //               },
    //               child: Container(
    //                 height: 250,
    //                 width:MediaQuery.of(context).size.width,
    //                 decoration: BoxDecoration(
    //                   color:Colors.black,
    //                   borderRadius: BorderRadius.circular(25),
                    
    //                 ),
    //               ),
    //             ),
          



    );
  }
}

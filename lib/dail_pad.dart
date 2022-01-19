import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class dail_pad extends StatelessWidget {
  const dail_pad({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: MediaQuery.of(context).size.height / 1.5,
        width: double.infinity,
        color: Colors.black38,

        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            children: [


              Row(children: [
                Text('1',
                style: TextStyle(color: Colors.black,
                fontSize: 60),),

                Text('@',
                style: TextStyle(color: Colors.black,
                fontSize: 15,),),

                SizedBox(
                  width: 120
                ),

                 Text('2',
                style: TextStyle(color: Colors.black,
                fontSize: 60),),

                Text('ABC',
                style: TextStyle(color: Colors.black,
                fontSize: 15),),

                Spacer(),

                Text('3',
                style: TextStyle(color: Colors.black,
                fontSize: 60),),

                Text('DEF',
                style: TextStyle(color: Colors.black,
                fontSize: 15),)
              ],),

              SizedBox(
                height: 30,
              ),
             
              Row(children: [
                Text('4',
                style: TextStyle(color: Colors.black,
                fontSize: 60),),

                Text('GHI',
                style: TextStyle(color: Colors.black,
                fontSize: 15,),),

                SizedBox(
                  width: 110
                ),

                 Text('5',
                style: TextStyle(color: Colors.black,
                fontSize: 60),),

                Text('JKL',
                style: TextStyle(color: Colors.black,
                fontSize: 15),),

                Spacer(),

                Text('6',
                style: TextStyle(color: Colors.black,
                fontSize: 60),),

                Text('MNO',
                style: TextStyle(color: Colors.black,
                fontSize: 15),)
              ],),

              SizedBox(
                height: 30,
              ),

              Row(children: [
                Text('7',
                style: TextStyle(color: Colors.black,
                fontSize: 60),),

                Text('PQRS',
                style: TextStyle(color: Colors.black,
                fontSize: 15,),),

                SizedBox(
                  width: 100
                ),

                Text('9',
                style: TextStyle(color: Colors.black,
                fontSize: 60),),

                Text('TUV',
                style: TextStyle(color: Colors.black,
                fontSize: 15),),

                Spacer(),

                Text('9',
                style: TextStyle(color: Colors.black,
                fontSize: 60),),

                Text('WXYZ',
                style: TextStyle(color: Colors.black,
                fontSize: 15),)
              ],),

              SizedBox(
                height: 30,
              ),

              Row(children: [
                Text('*',
                style: TextStyle(color: Colors.black,
                fontSize: 60),),

                SizedBox(
                  width: 140
                ),

                 Text('0',
                style: TextStyle(color: Colors.black,
                fontSize: 60),),

                Text('+',
                style: TextStyle(color: Colors.black,
                fontSize: 15),),

                Spacer(),

                Text('#',
                style: TextStyle(color: Colors.black,
                fontSize: 60),),

              ],)

            ],),
        ),
        

      ),

      
    ),
     floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
floatingActionButton: Padding(
  padding: const EdgeInsets.all(10),
  child:   FloatingActionButton(
  
          child: Icon(Icons.call),
  
          backgroundColor: Colors.blue[400],
  
          onPressed: () {},
  
        ),
),
      
    );
  }
}
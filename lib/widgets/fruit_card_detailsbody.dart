import 'package:flutter/material.dart';

import '../consts.dart';


class FruitCardDetails extends StatelessWidget {
  const FruitCardDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        
      height: 180,
      width:MediaQuery.of(context).size.width*.4 ,
      child:  Card(
       shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),),
        color:  Colors.white60,
        elevation: 7,
        child:const Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
                Image(
              width: 130,
              image: AssetImage('images/mango.png')),
        
              SizedBox(height: 5,),
              Text('Mango',style: TextStyle(fontSize: 20,fontFamily: 'Belanosima',
              fontWeight: FontWeight.bold,  color: Colors.black),),
        
            SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(r'15 Eg for kg',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400,
                  fontFamily:'Belanosima' ,
                  color: Colors.black),),
                  Icon(Icons.favorite,color:kAppbarColor),
                 
                ],
              )
            
            ],
          ),
        ),
      ),
    );
  }
}
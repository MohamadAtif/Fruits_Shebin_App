import 'package:flutter/material.dart';
import 'package:fruit_shebin/consts.dart';

class FruitCard extends StatelessWidget {
  const FruitCard({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Stack(
      clipBehavior: Clip.none,
      children: [
        Container(

          height: 180,
          width:MediaQuery.of(context).size.width*.4 ,
          child: const Card(
            color:  Colors.white,
            elevation: 7,
            
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                children:  [

                  SizedBox(height: 5,),
                  Text('Peach',style: TextStyle(fontSize: 20,fontFamily: 'Belanosima',
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
        ),
     
      Positioned(
        top: -35,
        bottom:60,
        left: 30,
        right: 30,
        child: Image.asset('images/peach.png'),
        // ,cacheHeight:70,
        // cacheWidth:90,
        
        ),
    ]
    )
      
    );
  }
}
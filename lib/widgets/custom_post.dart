import 'package:flutter/material.dart';


class CustomPostReview extends StatelessWidget {
  const CustomPostReview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
     
       decoration: BoxDecoration(
         
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey[400],
                  
                  ),
       child:Column(
         children: [
          Row(children: [
        const CircleAvatar(backgroundColor: Colors.black,
         child: Icon(Icons.person)),
        const SizedBox(width: 8,),
         TextButton(
           onPressed: () {},
           
           child:const  Text('Ahmed Salah',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,
         ),)
         )
       ],),
       
       const Row(
         children: [
           SizedBox(width:60 ,),
           Text('this Mango is so tasty and the Price \n is very well',
           style: TextStyle(fontSize: 16),
           )

         ],

       ),
       const SizedBox(height: 5,),
      const Padding(
     padding:  EdgeInsets.symmetric(horizontal:15.0),
     child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             SizedBox(height: 5,),
             Icon(Icons.favorite,color: Colors.red,)
           ],
         ),
                        )

         ],
       )
       
      ),
    );
  }
}
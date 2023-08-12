import 'package:flutter/material.dart';
import 'package:fruit_shebin/consts.dart';

import 'custom_post.dart';

class FruitDetailsBody extends StatelessWidget {
  const FruitDetailsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: CustomScrollView(
      slivers: [
           SliverToBoxAdapter(
          child: FruitBodydetails(),
             ),
        // SliverToBoxAdapter(
        //   child: ListView.builder(
        //     itemBuilder: (context, index) =>
        //   const CustomPostReview(),)
        // )
      ],
      
    )
    
    
    );
  }
}

class FruitBodydetails extends StatelessWidget {
  const FruitBodydetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                   IconButton(onPressed: (){}, icon: const Icon(Icons.close),color: kAppbarColor,),
                   IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart_outlined),color:kAppbarColor,),
                 ],
              ),
                const SizedBox(height: 15,),
                Image(
                    height: MediaQuery.of(context).size.height*.25,
                    width: 300,
                    image:const AssetImage('images/mango.png')),
                        const SizedBox(height: 38,),
                        const Text('Mango',style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
                        const SizedBox(width: 6, height: 10,),
                        const Text('15 Eg for Kg',style: TextStyle(fontSize: 18,color: Colors.grey),),
                       const SizedBox(width: 6, height: 10,),
                        const Image(width: 80, image: AssetImage('images/Rating.png')),
                         const SizedBox(width: 6, height: 15,),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 45 ,
                              width: MediaQuery.of(context).size.width*.4,
                             decoration: const BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(16),bottomLeft: Radius.circular(16)),
                             color: Colors.white),
                             child:const Center(child: Text(r'15 EG',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),)),

                            ),
                             Container(
                              height: 45 ,width: MediaQuery.of(context).size.width*.4,
                             decoration: const BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(16),bottomRight: Radius.circular(16)),
                             color: kAppbarColor),
                              child:const Center(child: Text('Add to Cart',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),)),

                            ),
                          ],
                        ),
                         const SizedBox(width: 6, height: 20,),
                         const Text("You Can also read peaple's Review",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,
                         color: Colors.black),textAlign: TextAlign.left,),
                        
                         const SizedBox(height: 15,),
                         const CustomPostReview(),
                         const CustomPostReview()
                     
                        

                         // اعمل ليستة ريفيو بكلام الناس 
                        //  const   SizedBox(height: 145,child:  FeauturedBooksListView(),)

      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sneaker_shop/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
       child: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 25),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             //logo
             Padding(
                 padding: const EdgeInsets.all(20),
             child: Image.asset(
               'lib/images/nike.png',
               height: 200,
             ),
             ),
             const SizedBox(height: 48),
             const Text('Just Do It',
             style:TextStyle(
               fontWeight: FontWeight.bold,
               fontSize: 20
             ) ,
             ),
             const SizedBox(height: 48),
             const Text('Yüksek kalitede yapılmış yepyeni spor ayakkabılar ve özel tasarımlar için ..',
               style:TextStyle(
                   fontSize: 16,
                 color: Colors.grey
               ) ,
               textAlign: TextAlign.center,
             ),
             const SizedBox(height: 48,),

          GestureDetector(
               onTap: ()=> Navigator.push(
               context,
                 MaterialPageRoute(builder: (context)=>HomePage(),
                 ),
             ),
               child: Container(
                 decoration: BoxDecoration(
                   color: Colors.grey[900],
                   borderRadius: BorderRadius.circular(12)
                 ),
                 padding: const EdgeInsets.all(25),
                 child: const Center(
                   child: Text(
                     'Alışveriş Yap',
                     style: TextStyle(
                       color: Colors.white,
                       fontWeight: FontWeight.bold,
                       fontSize: 16,
                     ),
                   ),
                 ),
               ),
             )
           ],
         ),
       ),
      ),
    );
  }
}

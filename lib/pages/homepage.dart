import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletui/utils/buttons.dart';
import 'package:walletui/utils/cards.dart';
import 'package:walletui/utils/listtile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // pagecontroller

final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar:CurvedNavigationBar(
        color: const Color.fromARGB(255, 207, 148, 217),
        height: 75.0,
        items: const [
        Icon(Icons.home,size: 50, ),
        Icon(Icons.monetization_on, size: 50,color: Colors.pink,),
        Icon(Icons.settings, size: 50,),
      ]),
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: RichText(text: const TextSpan(
                    text: 'My ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                    children: [TextSpan(text: 'Cards', style: TextStyle(fontSize: 28,fontWeight: FontWeight.normal))]
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.add)),
                )
              ],
            ),

             const SizedBox(height: 25,),

            //Cards
           Container(
            height: 200,
            child: PageView(
              controller: _controller,
              children: const [
                myCards(
                  balance: 50515.32,
                  cardNumber: 12365465,
                  expiryMonth: 11,
                  expiryYear: 25,
                  color: Colors.deepPurple,
                ),
                myCards(
                   balance: 89542.32,
                  cardNumber: 326548962,
                  expiryMonth: 10,
                  expiryYear: 25,
                  color: Colors.green,
                ),
                myCards(
                   balance: 21645.32,
                  cardNumber: 556489410321,
                  expiryMonth: 06,
                  expiryYear: 25,
                  color: Colors.amber,
                ),
              ],
            ),
           ),

           //icons for indicating the page when sliding

           SmoothPageIndicator(
            controller: _controller, 
            count: 3,
            effect:const ExpandingDotsEffect(
              activeDotColor: Colors.pink,
              dotColor:  Color.fromARGB(255, 49, 48, 48, )),
            ),
            SizedBox(height: 30,),

            //adding three buttons ( send button, pay button and bills button)
              const Padding(
               padding:  EdgeInsets.all(10.0),
               child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SingleChildScrollView(scrollDirection: Axis.horizontal,),
                  myButtons(iconImagePath:'lib/icons/send-money.png', 
                  buttonText: 'Send',),
                         
                  myButtons(iconImagePath:'lib/icons/atm-card.png', 
                  buttonText: 'Pay',),
                         
                  myButtons(iconImagePath:'lib/icons/bill.png', 
                  buttonText: 'Bills',)
                ],
                         ),
             ),


            SizedBox(height: 30,),


             const myListtile(
               iconImagePath: 'lib/icons/bar-graph.png', 
               tileName: 'Statistics', 
               tileSubname: 'Payments and Income'),

                const SizedBox(height: 25,),

               const myListtile(
               iconImagePath: 'lib/icons/transaction.png', 
               tileName: 'Transaction', 
               tileSubname: 'Transactions History'),


               //Bottom navigation bar(inside scaffold)


          ],
        ),
      ),
    );
  }
}
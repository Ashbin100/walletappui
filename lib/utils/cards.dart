import 'package:flutter/material.dart';

class myCards extends StatelessWidget {
  final double balance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final color;
  const myCards({
    super.key,
    required this.balance,
    required this.cardNumber,
    required this.expiryMonth,
    required this.expiryYear,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return 
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                width: 300,
                decoration: BoxDecoration(
                  color: color,
                borderRadius: BorderRadius.circular(20),
                ),
                child:  Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [const
                      SizedBox(height: 10,),
                     const Text('Balance',style: TextStyle(color: Colors.white),),
                      const SizedBox(height: 10,),
                            
                      Text('\$' + balance.toString(),
                      style: const TextStyle(color: Colors.white, fontSize: 25),),
                      const SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(cardNumber.toString(), style: TextStyle(color: Colors.white),),
                          Text(expiryMonth.toString() + '/' +expiryYear.toString(),style: TextStyle(color: Colors.white),),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );

  }
}
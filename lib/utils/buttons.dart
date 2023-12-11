import 'package:flutter/material.dart';

class myButtons extends StatelessWidget {
  final String iconImagePath;
  final String buttonText;
  const myButtons({
    super.key,
    required this.iconImagePath,
    required this.buttonText,
    });

  @override
  Widget build(BuildContext context) {
    return Column(
                  children: [
                    Container(
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        //color: Colors.white,
                        boxShadow:const [
                           BoxShadow(
                            color: Colors.white,
                            blurRadius: 40,
                            spreadRadius: 10
                            ),
                        ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Image.asset(iconImagePath,height: 60,),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(buttonText,style: TextStyle(fontSize: 24, fontWeight: FontWeight.w200),)
                  ],
                );
  }
}
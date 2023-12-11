import 'package:flutter/material.dart';

class myListtile extends StatelessWidget {
  final String iconImagePath;
  final String tileName;
  final String tileSubname;

  const myListtile({
    super.key,
    required this.iconImagePath,
    required this.tileName,
    required this.tileSubname,
    });

  @override
  Widget build(BuildContext context) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Image.asset(iconImagePath),
                  ),
                ),
                
                  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(tileName, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    Text(tileSubname,style: TextStyle(fontSize: 14),),
                  ],
                ),
                SizedBox(width: 20,),

                Icon(Icons.arrow_forward_ios),
              ],
            );
  }
}
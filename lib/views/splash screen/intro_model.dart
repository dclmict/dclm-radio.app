import 'package:dclm_radio/theme.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  final String text;
  final String image;
  const IntroScreen({super.key, required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(image),
                fit: BoxFit.fill),
              ),
            ),
            //dark overlay
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  AppTheme.canvas.withOpacity(0.2),
                  AppTheme.canvas.withOpacity(0.4),
                  AppTheme.canvas.withOpacity(0.9),],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //text
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 47.0),
                  child: Text(text,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 20),
                  textAlign: TextAlign.center,),
                ),
                SizedBox(height: 10,),
                //page indicator
                SizedBox(
                  height: 5,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 5,
                          margin: EdgeInsets.symmetric(horizontal: 2.5),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 5,
                          margin: EdgeInsets.symmetric(horizontal: 2.5),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 5,
                          margin: EdgeInsets.symmetric(horizontal: 2.5),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 25,),
                //button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: TextButton(onPressed: null,
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(AppTheme.canvas),
                    backgroundColor: MaterialStateProperty.all(AppTheme.primaryColor),
                    fixedSize: MaterialStateProperty.all(Size.fromHeight(52))
                  ), 
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal:95.0),
                    child: Row(
                      children: const[
                        Text('Get Started ',
                        style: TextStyle(
                          fontWeight: FontWeight.w800
                        ),),
                        Icon(Icons.arrow_right_alt,
                        )
                      ],
                    ),
                  )),
                ),
                SizedBox(height: 70,)
              ],
            )
          ],
        ),
    );
  }
}
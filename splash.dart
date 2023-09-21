import 'package:flutter/material.dart';
import 'main.dart';


class splash extends StatefulWidget {
  const splash({Key? key}): super(key: key);

  @override
  State<splash> createState() => _splashState();
}
class _splashState extends State<splash> {
  @override
  void initState() {

    super.initState();
    //_navigatetohome();
  }
  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 1500),() {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MemoryCardGame()));
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              child: ClipOval(
                child: Image(
                  image: NetworkImage('https://picsum.photos/100/100'),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Container(
              child: Text('Splash Screen testing', style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,

              ))
            ),
          ],
        ),
      )
    );
  }
}

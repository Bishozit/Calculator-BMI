import 'package:flutter/material.dart';

class result extends StatefulWidget {
  //result({Key? key, this.result1}) :({super.key});

  String? result1;
  @override
  State<result> createState() => _resultState();
}

class _resultState extends State<result> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrr20-gR29A8vKJbyLbWf2obYf7fcfcN0YtMWgNY_jM-FGT72mwPRyHLjaC3Jjcz8xqww&usqp=CAU"))),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Gmail: ${widget.result1}",
                  style: TextStyle(
                      color: Color(0xffffffff), fontWeight: FontWeight.w700)),
            ],
          ),
        ),
      ),
    );
  }
}

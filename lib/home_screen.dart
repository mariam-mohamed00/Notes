import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:notes/main.dart';

class home_screen extends StatelessWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 140, 180,0),
              child: Text('Notepad', style: TextStyle(fontSize: 35 , fontWeight: FontWeight.w500),),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 40, 30, 5),
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Search Notes',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  )
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: SizedBox(height: 95, width: 350,
              child: ElevatedButton(
                child:
                const Text('''Todays grocery list
June 26, 2022 08:05 PM''', style: TextStyle(color: Colors.black),),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  backgroundColor: const Color.fromRGBO(134, 239, 195, 0.7),
                    padding: const EdgeInsets.all(30),
                    textStyle: const TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                ),
                  alignment: Alignment.centerLeft,
                ),
                 onPressed: () {},
                 ),
              ),
            ),

            SizedBox(height: 95, width: 350,
            child: ElevatedButton(
              child: const Text('''Rich dad poor dad quotes
June 22, 2022 05:00 PM''', style: TextStyle(color: Colors.black),),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                backgroundColor: const Color.fromRGBO(247, 178, 247, 0.8),
                padding: const EdgeInsets.all(30),
                textStyle: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                alignment: Alignment.centerLeft,
              ), onPressed: () {  },
            ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add,color: Colors.black,size: 40),
        backgroundColor: Color.fromRGBO(206, 234, 239,0.8),
        elevation: 0,
        onPressed: () {},
      ),
    );
  }
}


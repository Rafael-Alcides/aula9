import 'package:flutter/material.dart';

void main() {
  runApp(const MyFixedTab());
}

class MyFixedTab extends StatelessWidget {
  const MyFixedTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
          title: const Text("Meu pet: A Loja do seu Pet"),
          centerTitle: false,
          backgroundColor: Colors.indigo[300],
          leading: ClipRRect(
            child: Image.network("https://camo.githubusercontent.com/4b783104cc582931f87054bdaa2d0f9353d5a210ef7f772420928c1501f54f22/68747470733a2f2f692e696d6775722e636f6d2f654641723551582e706e67"),
          ),
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text("CATIOROS",
                style: TextStyle(
                  fontSize: 18
                ),),
              ),

              Tab(
                child: Text("GATINEOS",
                style: TextStyle(
                  fontSize: 18
                ),),
              ),

              Tab(
                child: Text("PASSARINEOS",
                style: TextStyle(
                  fontSize: 18
                ),),
              )
            ],
        
          ),
        ),
        body:const TabBarView(
          children: [
            Center(child: Text("CATIOROS"),),
            Center(child: Text("GATINEOS"),),
            Center(child: Text("PASSARINEOS"),)  
          ]),
        ),
      ),
    );
  }
}

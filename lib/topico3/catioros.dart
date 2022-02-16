import 'package:flutter/material.dart';

void main() {
  runApp(const TabScroll());
}

class TabScroll extends StatelessWidget {
  const TabScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nomes = [
      "Dachshund",
      "Golden",
      "Bulldog",
      "Pug",
      "Spaniel",
      "Husky",
      "Border Collie",
      "Beagle",
      "Pitbull",
      "Dalmata",
    ];

    final tabs = [
      "https://cdn.pixabay.com/photo/2012/08/10/18/52/foxhound-53951__340.jpg",
      "https://cdn.pixabay.com/photo/2019/08/07/14/11/dog-4390885__340.jpg",
      "https://cdn.pixabay.com/photo/2014/12/10/05/50/english-bulldog-562723__340.jpg",
      "https://cdn.pixabay.com/photo/2016/11/18/13/57/pug-1834721__340.jpg",
      "https://cdn.pixabay.com/photo/2014/04/21/18/31/dog-329280__340.jpg",
      "https://cdn.pixabay.com/photo/2018/05/07/10/48/husky-3380548__480.jpg",
      "https://cdn.pixabay.com/photo/2017/03/29/10/17/border-collie-2184706__340.jpg",
      "https://cdn.pixabay.com/photo/2019/08/30/10/10/beagle-4440889__340.jpg",
      "https://cdn.pixabay.com/photo/2017/02/08/01/39/pit-bull-2047469__340.jpg",
      "https://cdn.pixabay.com/photo/2017/09/12/05/14/dogs-2741287__340.jpg",
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              "Catioros",
              style: TextStyle(fontSize: 32),
            ),
            backgroundColor: Colors.deepPurple,
            bottom: TabBar(
              indicatorColor: Colors.yellow,
              isScrollable: true,
              tabs: [
                for (final nome in nomes)
                  Tab(
                    text: nome
                  )
              ],
            ),
          ),
          body: TabBarView(children: [
            for (final tab in tabs)
              Center(
                child: Image.network(tab)
              )
          ]),
        ),
      ),
    );
  }
}

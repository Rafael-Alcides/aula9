import 'package:flutter/material.dart';

void main() {
  runApp(QueViagem());
}

class QueViagem extends StatefulWidget {
  QueViagem({Key? key}) : super(key: key);

  @override
  State<QueViagem> createState() => _QueViagemState();
}

Color corbase = Colors.blue.shade800;

class _QueViagemState extends State<QueViagem> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Que viagem! Turismo",
              style: TextStyle(
                fontSize: 28,
                color: corbase,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.amber.shade600,
            bottom: TabBar(
              indicatorColor: corbase,
              tabs: [
                setTab("VOOS", Icons.flight_rounded),
                setTab("PASSEIOS", Icons.shopping_bag),
                setTab("PASSEIOS", Icons.explore_rounded)
              ],
            ),
          ),
          body: TabBarView(
            children: [
              setVoo(),
              setPasseio(),
              setmapa(),
            ],
          ),
        ),
      ),
    );
  }
}

Tab setTab(String titulo, IconData icone) {
  return Tab(
    child: Text(
      titulo,
      style: TextStyle(
        fontSize: 18,
        color: corbase,
        fontWeight: FontWeight.bold,
      ),
    ),
    icon: Icon(
      icone,
      size: 36,
      color: corbase,
    ),
  );
}

Container setVoo() {
  return Container(
    child: Padding(
      padding: const EdgeInsets.all(45.0),
      child: Column(
        children: [
          const Text(
            "PARTIDA",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text("Abril 26, 2022"),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: const [
                  Text(
                    "SAL",
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Salvador, Bahia")
                ],
              ),
              const RotatedBox(
                quarterTurns: 1,
                child: Icon(
                  Icons.flight_rounded,
                  size: 48,
                ),
              ),
              Column(
                children: const [
                  Text(
                    "SP",
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("São Paulo, SP")
                ],
              ),
            ],
          )
        ],
      ),
    ),
  );
}

ListView setPasseio() {
  return ListView(
    children: [
      Container(
        child: Padding(
          padding: const EdgeInsets.all(45.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Pontos turoisticos de São Paulo",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Ponto 1",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              Image.network(
                  "https://cdn.pixabay.com/photo/2017/07/21/10/16/cat-2525277__340.jpg"),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "flutter e a melhor coisa que existe flutter e a melhor coisa que existe flutter e a melhor coisa que existe flutter e a melhor coisa que existe",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Ponto 2",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              Image.network(
                  "https://cdn.pixabay.com/photo/2017/07/21/10/16/cat-2525277__340.jpg"),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "flutter e a melhor coisa que existe flutter e a melhor coisa que existe flutter e a melhor coisa que existe flutter e a melhor coisa que existe",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Ponto 3",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              Image.network(
                  "https://cdn.pixabay.com/photo/2017/07/21/10/16/cat-2525277__340.jpg"),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "flutter e a melhor coisa que existe flutter e a melhor coisa que existe flutter e a melhor coisa que existe flutter e a melhor coisa que existe",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18,
                ),
              )
            ],
          ),
        ),
      )
    ],
  );
}

Image setmapa() {
  return Image.network(
      "https://cdn.pixabay.com/photo/2017/07/21/10/16/cat-2525277__340.jpg");
}

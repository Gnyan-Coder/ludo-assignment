import 'package:flutter/material.dart';
import 'package:ludo/model.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (BuildContext context)=>MyModel(),
      child: Scaffold(
          appBar: AppBar(
            title: Text("Ludo"),
            centerTitle: true,
          ),
          body: Center(
            child: Card(
              elevation: 10,
              child: Column(
                children: [
                  Container(
                    height: 500,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/Ludo_board.png"),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Consumer<MyModel>(
                            builder: (context,MyModel,child){
                              return TextButton(
                                child: Image.asset("assets/${MyModel.dice}.png", height: 70,),
                                onPressed: () {
                                  MyModel.rollDice();
                                },
                              );
                            },
                          )
                      )
                    ],
                  )
                ],
              ),
            ),
          )
      ),
    );
  }
}

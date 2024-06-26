import 'package:diaz0460/util/my_button.dart';
import 'package:diaz0460/util/my_card.dart';
import 'package:diaz0460/util/my_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.brown[300],
          child: Icon(Icons.monetization_on, size: 40),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: Colors.grey[200],
          child: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.home, size: 28)),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.settings, size: 28))
                ]),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(height: 15),
                        Text(
                          "Mi",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(" tarjeta", style: TextStyle(fontSize: 28)),
                      ],
                    ),
                    Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            color: Colors.grey[400], shape: BoxShape.circle),
                        child: Icon(Icons.add))
                  ],
                ),
              ),
              SizedBox(height: 25),
              Container(
                height: 200,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  children: [
                    MyCard(
                      balance: 5250.20,
                      cardNumber: 12345678,
                      expiryMonth: 10,
                      expiryYaer: 24,
                      color: Colors.deepPurple[400],
                    ),
                    MyCard(
                      balance: 3241.45,
                      cardNumber: 12345678,
                      expiryMonth: 06,
                      expiryYaer: 24,
                      color: Colors.blue[400],
                    ),
                    MyCard(
                      balance: 7823.30,
                      cardNumber: 12345678,
                      expiryMonth: 09,
                      expiryYaer: 24,
                      color: Colors.pink[300],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: ExpandingDotsEffect(
                  activeDotColor: Colors.grey.shade700,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyButton(
                      iconImagePath: 'lib/icons/dinero.png',
                      buttonText: 'Dinero',
                    ),
                    MyButton(
                      iconImagePath: 'lib/icons/tarjeta-bancaria.png',
                      buttonText: 'Pagar',
                    ),
                    MyButton(
                      iconImagePath: 'lib/icons/factura.png',
                      buttonText: 'Factura',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    MyListTile(
                      iconImagePath: 'lib/icons/estadisticas.png',
                      tileTitle: 'Estadisticas',
                      tileSubTitle: 'Pagos e ingresos',
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    MyListTile(
                      iconImagePath: 'lib/icons/transaccion-monetaria.png',
                      tileTitle: 'Transaccion',
                      tileSubTitle: 'Historial de transaccion',
                    )
                  ],
                ),
              )
            ]),
          ),
        ));
  }
}

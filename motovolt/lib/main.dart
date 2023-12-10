import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Index(),
    );
  }
}

Future<void> sendOrder(String model, String phNo, String address, String pincode) async {
  final url = Uri.parse('http://127.0.0.1:5000/order');
  Map<String, dynamic> body = {"model": model, "ph_no": phNo, "address": address, "pincode": pincode};
  try {
    final response = await http.post(url, body: body, headers: {'Content-Type': 'application/json'});

    if (response.statusCode == 200) {
      // Handle successful response
    } else {
      // Handle error
    }
  } catch (error) {
    // Handle network error
  }
}


class Index extends StatelessWidget {
  const Index({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Align(alignment: Alignment.center,child: Text("Buy your ride", style: TextStyle(fontFamily: "Cambria Math", fontSize: 30),)),
        ),
        body: Column(
          children: [
            const SizedBox(height: 100),
            SizedBox(
              height: 400,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  for (int i = 1;i < 4; i++)
                  Padding(padding: const EdgeInsets.all(15),
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 222, 221, 221),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        width: 300,
                        child: Column(
                          children: [
                            Image.asset("assets/$i.png", height: 300,),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Model S $i", style: const TextStyle(fontSize: 25, color: Colors.black),),
                                  TextButton(onPressed: () {
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {return ModelSA(title: "$i",);}));
                                  },child: const Icon(Icons.remove_red_eye, size: 32, color: Colors.black,))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

String price(String i) {
  if (i == "1") {
    return "32 USD";
  } else if (i == "2") {
    return "48 USD";
  } else {
    return "64 USD";
  }
}
String durability(String i) {
  if (i == "1") {
    return "40 KM";
  } else if (i == "2") {
    return "48 KM";
  } else {
    return "54 KM";
  }
}
String maxSpeed(String i) {
  if (i == "1") {
    return "30 Kmph";
  } else if (i == "2") {
    return "40 Kmphv";
  } else {
    return "50 Kmph";
  }
}
String chargingTime(String i) {
  if (i == "1") {
    return "12 hrs.";
  } else if (i == "2") {
    return "6 hrs.";
  } else {
    return "4 hrs.";
  }
}
class ModelSA extends StatelessWidget {
  final String title;
  const ModelSA({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton(onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return const Index();
                  }));
                }, child: const Icon(Icons.arrow_back, color: Colors.black,)),
              ),
              AnimatedContainer(duration: const Duration(seconds: 1),child: Image.asset("assets/$title.png")),
              Text("Model S $title", style: const TextStyle(fontFamily: "Calibri", fontSize: 26, fontWeight: FontWeight.bold)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Duration", style: TextStyle(fontSize: 20, fontFamily: "Calibri"),),
                  Text(durability(title), style: const TextStyle(fontSize: 20, fontFamily: "Calibri"))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Price", style: TextStyle(fontSize: 20, fontFamily: "Calibri"),),
                  Text(price(title), style: const TextStyle(fontSize: 20, fontFamily: "Calibri"))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Max speed", style: TextStyle(fontSize: 20, fontFamily: "Calibri"),),
                  Text(maxSpeed(title), style: const TextStyle(fontSize: 20, fontFamily: "Calibri"))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Charging time", style: TextStyle(fontSize: 20, fontFamily: "Calibri"),),
                  Text(chargingTime(title), style: const TextStyle(fontSize: 20, fontFamily: "Calibri"))
                ],
              ),
              ElevatedButton(onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) {return Purchase(model: title);}));}, style: ElevatedButton.styleFrom(backgroundColor: Colors.black), child: SizedBox(width: MediaQuery.sizeOf(context).width*0.9,child:const  Align(alignment: Alignment.center,child: Text("Purchase", style: TextStyle(fontSize: 20),)),))
            ],
          ),
        ),
      ),
    );
  }
}

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const SizedBox(height: 20,),
              Align(alignment: Alignment.centerLeft,child: TextButton(style: TextButton.styleFrom(backgroundColor: Colors.white, foregroundColor: Colors.black),onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {return const Index();}));
              }, child: const Icon(Icons.arrow_back))),
              const Row(
                children: [
                  Icon(Icons.account_box),
                  SizedBox(width: 10),
                  Text("Accounts", style: TextStyle(fontSize: 25, fontFamily: "Calibri"),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Purchase extends StatelessWidget {
  final String model;
  final m = TextEditingController();
  final m1 = TextEditingController();
  final m2 = TextEditingController();
  Purchase({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const SizedBox(height: 30),
              Row(
                children: [
                  TextButton(onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                      return const Index();
                    }));
                  },child: const Icon(Icons.arrow_back, color: Colors.black,)),
                  const Text("Purchase", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ],
              ),
              TextField(
                decoration: const InputDecoration(hintText: "Enter Phone number"),
                controller: m,
              ),
              TextField(
                decoration: const InputDecoration(hintText: "Enter your address"),
                controller: m1,
              ),
              TextField(
                decoration: const InputDecoration(hintText: "Enter Pincode"),
                controller: m2,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Model", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text("S$model", style: const TextStyle(fontSize: 20)),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Price", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text(price(model), style: const TextStyle(fontSize: 20),)
                ],
              ),
              ElevatedButton(onPressed: () {
                sendOrder(model, m.text , m1.text, m2.text);
                showDialog(context: context,builder: (context) => AlertDialog(title: const Text('Order status'),content: const Text('Your order has been placed ! You will recieve your order soon !'),actions: [TextButton(child: const Text('Thank you'),onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) {return Index();}));},),],),);
              }, style: ElevatedButton.styleFrom(backgroundColor: Colors.black), child: const Text("Order now", style: TextStyle(fontSize: 19,color: Colors.white)))
            ],
          ),
        ),
      ),
    );
  }
}
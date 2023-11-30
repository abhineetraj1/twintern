import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.sizeOf(context).width < MediaQuery.sizeOf(context).height) {
      return MaterialApp(
        home: Mobile(),
      );
    } else {
      return MaterialApp(
        home: Desktop(),
      );
    }
  }
}

class Mobile extends StatelessWidget {
  final textfield = TextEditingController();
  final textfield1 = TextEditingController();
  final textfield2 = TextEditingController();
  final textfield3 = TextEditingController();
  Mobile({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Align(alignment: Alignment.center,child: Text("Screen recorder", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),)), backgroundColor: Colors.purple,),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Image.asset("assets/as.gif"),
                const SizedBox(height: 10,),
                const Text("Capture your screen, share your ideas", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                const SizedBox(height: 10,),
                const Text("Screen Recorder is perfect for creating tutorials, demos, presentations, and more. It is also a great tool for video bloggers, gamers, and anyone else who wants to share their screen with others.", style: TextStyle(fontSize: 18, fontFamily: "Cambria Math")),
                const SizedBox(height: 100,),
                const Text("Pricing", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, fontFamily: "Calibri"),),
                const SizedBox(height: 30,),
                Container(
                  height: 270,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(padding: const EdgeInsets.all(10),
                        child: Container(
                          width: 230,
                          decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(25)), border: Border.all(color: Colors.purple, width: 2)),
                          child: Column(
                            children: [
                              const Text("Basic", style: TextStyle(color: Colors.purple, fontSize: 30, fontWeight: FontWeight.bold),),
                              const Text("9 USD", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
                              const Align(alignment: Alignment.centerLeft,child: Text(" ✅Unlimited time", style: TextStyle(fontSize: 18),),),
                              const Align(alignment: Alignment.centerLeft,child: Text(" ✅Display timer", style: TextStyle(fontSize: 18),),),
                              const Align(alignment: Alignment.centerLeft,child: Text(" ❌Voice recording", style: TextStyle(fontSize: 18),),),
                              const Align(alignment: Alignment.centerLeft,child: Text(" ❌Shortcut keys", style: TextStyle(fontSize: 18),),),
                              const Align(alignment: Alignment.centerLeft,child: Text(" ❌Voice command", style: TextStyle(fontSize: 18),),),
                              const Align(alignment: Alignment.centerLeft,child: Text(" ❌Personal branding", style: TextStyle(fontSize: 18),),),
                              ElevatedButton(onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                            return Enquiry(plan: "Basic");
                          }));
                        }, style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),child: const Text("Enquire"))
                            ],
                          ),
                        ),
                      ),
                      Padding(padding: const EdgeInsets.all(10),
                        child: Container(
                          width: 230,
                          decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(25)), border: Border.all(color: Colors.purple, width: 2)),
                          child: Column(
                            children: [
                              const Text("Premium", style: TextStyle(color: Colors.purple, fontSize: 30, fontWeight: FontWeight.bold),),
                              const Text("49 USD", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
                              const Align(alignment: Alignment.centerLeft,child: Text(" ✅Unlimited time", style: TextStyle(fontSize: 18),),),
                              const Align(alignment: Alignment.centerLeft,child: Text(" ✅Display timer", style: TextStyle(fontSize: 18),),),
                              const Align(alignment: Alignment.centerLeft,child: Text(" ✅Voice recording", style: TextStyle(fontSize: 18),),),
                              const Align(alignment: Alignment.centerLeft,child: Text(" ✅Shortcut keys", style: TextStyle(fontSize: 18),),),
                              const Align(alignment: Alignment.centerLeft,child: Text(" ❌Voice command", style: TextStyle(fontSize: 18),),),
                              const Align(alignment: Alignment.centerLeft,child: Text(" ❌Personal branding", style: TextStyle(fontSize: 18),),),
                              ElevatedButton(onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                            return Enquiry(plan: "Premium");
                          }));
                        }, style: ElevatedButton.styleFrom(backgroundColor: Colors.purple), child: const Text("Enquire"))
                            ],
                          ),
                        ),
                      ),
                      Padding(padding: const EdgeInsets.all(10),
                        child: Container(
                          width: 230,
                          decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(25)), border: Border.all(color: Colors.purple, width: 2)),
                          child: Column(
                            children: [
                              const Text("Business", style: TextStyle(color: Colors.purple, fontSize: 30, fontWeight: FontWeight.bold),),
                              const Text("149 USD", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
                              const Align(alignment: Alignment.centerLeft,child: Text(" ✅Unlimited time", style: TextStyle(fontSize: 18),),),
                              const Align(alignment: Alignment.centerLeft,child: Text(" ✅Display timer", style: TextStyle(fontSize: 18),),),
                              const Align(alignment: Alignment.centerLeft,child: Text(" ✅Voice recording", style: TextStyle(fontSize: 18),),),
                              const Align(alignment: Alignment.centerLeft,child: Text(" ✅Shortcut keys", style: TextStyle(fontSize: 18),),),
                              const Align(alignment: Alignment.centerLeft,child: Text(" ✅Voice command", style: TextStyle(fontSize: 18),),),
                              const Align(alignment: Alignment.centerLeft,child: Text(" ✅Personal branding", style: TextStyle(fontSize: 18),),),
                              ElevatedButton(onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                            return Enquiry(plan: "Business");
                          }));
                        }, style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),child: const Text("Enquire"))
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),

                ),
                const SizedBox(height: 70),
                const Text("Reviews", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, fontFamily: "Calibri"),),
                const SizedBox(height: 30,),
              Container(
                height: 400,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: 230,
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            children: [
                              Align(alignment: Alignment.centerLeft,child: Text("Aryan", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
                              Row(children: [Icon(Icons.star, color: Colors.purple,), Text("4.5", style: TextStyle(fontSize: 18),)],),
                              Align(alignment: Alignment.centerLeft,child: Text("This screen recorder is a lifesaver! I love that it can record for unlimited time, so I don't have to worry about running out of space. The personal branding feature is great for adding my logo and watermark to my videos. The voice commands and shortcut keys are super convenient, and the voice recorder is a great bonus. ", style: TextStyle(fontSize: 18),))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: 230,
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            children: [
                              Align(alignment: Alignment.centerLeft,child: Text("Dhruv", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
                              Row(children: [Icon(Icons.star, color: Colors.purple,), Text("4.5", style: TextStyle(fontSize: 18),)],),
                              Align(alignment: Alignment.centerLeft,child: Text("I'm a small business owner, and I use this screen recorder to create training videos for my employees. It's perfect for my needs because it can record for unlimited time and has a voice recorder. I can also add my personal branding to my videos, which is great for branding my business. ", style: TextStyle(fontSize: 18),))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: 230,
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            children: [
                              Align(alignment: Alignment.centerLeft,child: Text("Navya", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
                              Row(children: [Icon(Icons.star, color: Colors.purple,), Text("4.5", style: TextStyle(fontSize: 18),)],),
                              Align(alignment: Alignment.centerLeft,child: Text("This screen recorder is a game-changer! I'm a professional video producer, and this is the best tool I've found for recording my screen. I love that it can record for unlimited time and has so many customization options. The personal branding feature is a must-have for me, and the voice commands and shortcut keys are also super helpful. ", style: TextStyle(fontSize: 18),))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: 230,
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            children: [
                              Align(alignment: Alignment.centerLeft,child: Text("Dipti", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
                              Row(children: [Icon(Icons.star, color: Colors.purple,), Text("4.5", style: TextStyle(fontSize: 18),)],),
                              Align(alignment: Alignment.centerLeft,child: Text(" I'm a gamer, and I use this screen recorder to record my gameplay. I love that it can record for unlimited time and has a voice recorder. I can also add my personal branding to my videos, which is great for sharing them with my friends and followers. ", style: TextStyle(fontSize: 18),))
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              const Text("Send your review", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
              const SizedBox(height: 30,),
              Padding(padding: const EdgeInsets.all(10),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [BoxShadow(color: Colors.black, blurRadius: 1, blurStyle: BlurStyle.outer)]
                  ),
                  child: Padding(padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        TextField(
                          decoration: const InputDecoration(
                            hintText: "Enter your name"
                          ),
                          controller: textfield,
                        ),
                        TextField(
                          decoration: const InputDecoration(
                            hintText: "Enter your email"
                          ),
                          controller: textfield1,
                        ),
                        TextField(
                          decoration: const InputDecoration(
                            hintText: "Enter your rating"
                          ),
                          controller: textfield2,
                        ),
                        TextField(
                          decoration: const InputDecoration(
                            hintText: "Enter your feedback"
                          ),
                          controller: textfield3,
                        ),
                        const SizedBox(height: 30,),
                        ElevatedButton(onPressed: () {
                          textfield.clear();
                          textfield1.clear();
                          textfield2.clear();
                          textfield3.clear();
                          showAlertDialog(context);
                        }, style: ElevatedButton.styleFrom(backgroundColor: Colors.purple), child: const Text("Send feedback"))
                      ],
                    ),
                  ),
                ),
              )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Desktop extends StatelessWidget {
  final txtfl = TextEditingController();
  final txtfl1 = TextEditingController();
  final txtfl2 = TextEditingController();
  final txtfl3 = TextEditingController();
  Desktop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Align(alignment: Alignment.center,child: Text("Screen recorder", style: TextStyle(fontSize: 25),)),
          backgroundColor: Colors.purple,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/as.gif", width: MediaQuery.sizeOf(context).width*0.4,),
                  Column(
                    children: [
                      const Text("Capture your screen, share your ideas", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.purple),),
                      Container(
                        width: MediaQuery.sizeOf(context).width*0.5,
                        child: const Text("Screen Recorder is perfect for creating tutorials, demos, presentations, and more. It is also a great tool for video bloggers, gamers, and anyone else who wants to share their screen with others.", style: TextStyle(fontSize: 20),),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 80),
            const Align(alignment: Alignment.center,
              child: Text("Price", style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 270,
                    width: 270,
                    decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30)), boxShadow: [BoxShadow(color: Colors.purple, blurRadius: 4,blurStyle: BlurStyle.outer)]),
                    child: Column(
                      children: [
                        const Text("Basic", style: TextStyle(fontSize: 23, color: Colors.purple, fontWeight: FontWeight.bold),),
                        const Text("9 USD", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                        const Align(alignment: Alignment.centerLeft,child: Text(" ✅ Unlimited time", style: TextStyle(fontSize: 18),)),
                        const Align(alignment: Alignment.centerLeft,child: Text(" ✅ Display timer", style: TextStyle(fontSize: 18),)),
                        const Align(alignment: Alignment.centerLeft,child: Text(" ❌ Voice recording", style: TextStyle(fontSize: 18),)),
                        const Align(alignment: Alignment.centerLeft,child: Text(" ❌ Shortcut keys", style: TextStyle(fontSize: 18),)),
                        const Align(alignment: Alignment.centerLeft,child: Text(" ❌ Voice command", style: TextStyle(fontSize: 18),)),
                        const Align(alignment: Alignment.centerLeft,child: Text(" ❌ Personal branding", style: TextStyle(fontSize: 18),)),
                        const SizedBox(height: 20,),
                        ElevatedButton(onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                            return Enquiry(plan: "Basic");
                          }));
                        }, style: ElevatedButton.styleFrom(backgroundColor: Colors.purple), child: const Text("Enquire"))
                      ],
                    ),
                  ),
                ),
                Padding(padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 270,
                    width: 270,
                    decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30)), boxShadow: [BoxShadow(color: Colors.purple, blurRadius: 4,blurStyle: BlurStyle.outer)]),
                    child: Column(
                      children: [
                        const Text("Premium", style: TextStyle(fontSize: 23, color: Colors.purple, fontWeight: FontWeight.bold),),
                        const Text("49 USD", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                        const Align(alignment: Alignment.centerLeft,child: Text(" ✅ Unlimited time", style: TextStyle(fontSize: 18),)),
                        const Align(alignment: Alignment.centerLeft,child: Text(" ✅ Display timer", style: TextStyle(fontSize: 18),)),
                        const Align(alignment: Alignment.centerLeft,child: Text(" ✅ Voice recording", style: TextStyle(fontSize: 18),)),
                        const Align(alignment: Alignment.centerLeft,child: Text(" ✅ Shortcut keys", style: TextStyle(fontSize: 18),)),
                        const Align(alignment: Alignment.centerLeft,child: Text(" ❌ Voice command", style: TextStyle(fontSize: 18),)),
                        const Align(alignment: Alignment.centerLeft,child: Text(" ❌ Personal branding", style: TextStyle(fontSize: 18),)),
                        const SizedBox(height: 20,),
                        ElevatedButton(onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                            return Enquiry(plan: "Premium");
                          }));
                        }, child: const Text("Enquire"), style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),)
                      ],
                    ),
                  ),
                ),
                Padding(padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 270,
                    width: 270,
                    decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30)), boxShadow: [BoxShadow(color: Colors.purple, blurRadius: 4,blurStyle: BlurStyle.outer)]),
                    child: Column(
                      children: [
                        const Text("Business", style: TextStyle(fontSize: 23, color: Colors.purple, fontWeight: FontWeight.bold),),
                        const Text("149 USD", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                        const Align(alignment: Alignment.centerLeft,child: Text(" ✅ Unlimited time", style: TextStyle(fontSize: 18),)),
                        const Align(alignment: Alignment.centerLeft,child: Text(" ✅ Display timer", style: TextStyle(fontSize: 18),)),
                        const Align(alignment: Alignment.centerLeft,child: Text(" ✅ Voice recording", style: TextStyle(fontSize: 18),)),
                        const Align(alignment: Alignment.centerLeft,child: Text(" ✅ Shortcut keys", style: TextStyle(fontSize: 18),)),
                        const Align(alignment: Alignment.centerLeft,child: Text(" ✅ Voice command", style: TextStyle(fontSize: 18),)),
                        const Align(alignment: Alignment.centerLeft,child: Text(" ✅ Personal branding", style: TextStyle(fontSize: 18),)),
                        const SizedBox(height: 20,),
                        ElevatedButton(onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                            return Enquiry(plan: "Business");
                          }));
                        }, child: const Text("Enquire"), style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),)
                      ],
                    ),
                  ),
                )
              ],
              ),
            ),
            const SizedBox(height: 70),
            const Align(alignment: Alignment.center,
              child: Text("Review", style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(padding: const EdgeInsets.all(10),
                    child: Container(
                      width: 300,
                      height: 300,
                      decoration: const BoxDecoration(boxShadow: [BoxShadow(color:Colors.purple, blurRadius: 10, blurStyle: BlurStyle.outer)], borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Text("Saanvi", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
                            Row(
                              children: [
                                Icon(Icons.star, color: Colors.purple),
                                Text("4.8", style: TextStyle(fontSize: 19)),
                              ],
                            ),
                            Text(" I'm a student, and I use this screen recorder to record my lectures and study sessions. It's perfect for my needs because it can record for unlimited time and has a voice recorder. I can also add my personal branding to my videos, which is great for sharing them with my classmates. ", style: TextStyle(fontSize: 19)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: const EdgeInsets.all(10),
                    child: Container(
                      width: 300,
                      height: 300,
                      decoration: const BoxDecoration(boxShadow: [BoxShadow(color:Colors.purple, blurRadius: 10, blurStyle: BlurStyle.outer)], borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Text("Devansh", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
                            Row(
                              children: [
                                Icon(Icons.star, color: Colors.purple),
                                Text("4.8", style: TextStyle(fontSize: 19)),
                              ],
                            ),
                            Text(" I'm a blogger, and I use this screen recorder to record my tutorials. It's perfect for my needs because it can record for unlimited time and has so many customization options. I can also add my personal branding to my videos, which is great for branding my blog. ", style: TextStyle(fontSize: 19)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: const EdgeInsets.all(10),
                    child: Container(
                      width: 300,
                      height: 300,
                      decoration: const BoxDecoration(boxShadow: [BoxShadow(color:Colors.purple, blurRadius: 10, blurStyle: BlurStyle.outer)], borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Text("Dipti", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
                            Row(
                              children: [
                                Icon(Icons.star, color: Colors.purple,),
                                Text("4.5", style: TextStyle(fontSize: 19)),
                              ],
                            ),
                            Text("I'm a professional video producer, and this is the best tool I've found for recording my screen. I love that it can record for unlimited time and has so many customization options. The personal branding feature is a must-have for me, and the voice commands and shortcut keys are also super helpful. ", style: TextStyle(fontSize: 19)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 70),
            const Align(alignment: Alignment.center, child: Text("Feedback form", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold))),
            const SizedBox(height: 30,),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 350,
                width: 300,
                decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)), boxShadow: [BoxShadow(color: Colors.purple, blurRadius: 10, blurStyle: BlurStyle.outer)]),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      TextField(
                        controller: txtfl3,
                        decoration: const InputDecoration(hintText: "Enter your name"),
                      ),
                      TextField(
                        controller: txtfl2,
                        decoration: const InputDecoration(hintText: "Enter mail ID"),
                      ),
                      TextField(
                        controller: txtfl1,
                        decoration: const InputDecoration(hintText: "Enter Rating (out of 5)"),
                      ),
                      TextField(
                        controller: txtfl,
                        decoration: const InputDecoration(hintText: "Enter your feedback"),
                      ),
                      const SizedBox(height:50),
                      ElevatedButton(onPressed: () {
                        txtfl.clear();
                        txtfl1.clear();
                        txtfl2.clear();
                        txtfl3.clear();
                        showDialog(context: context, builder: (context) {
                        return AlertDialog(
                          title: const Text("Screen recorder"),
                          content: const Text("Thanks for your feedback, we will definity work more on our product"),
                          actions: [
                            TextButton(onPressed: () {
                              Navigator.of(context).pop();
                            }, child: const Text("Ok", style: TextStyle(color: Colors.purple),))
                          ],
                        );
                        });
                      }, child: const Text("Send feedback"), style: ElevatedButton.styleFrom(backgroundColor: Colors.purple))
                    ],
                  ),
                )
              )
            ),
            SizedBox(height: 30)
          ],),
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  AlertDialog alert =  AlertDialog(
    title: Text("Screen recorder"),
    content: Text("Thanks for your feedback, we will definity work more on our product"),
    actions: [
        TextButton(onPressed: () {
          Navigator.of(context).pop();
      }, child: Text("Ok"))
    ],
  );
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

class Enquiry extends StatelessWidget {
  final String plan;
  final enfl = TextEditingController();
  final enfl1 = TextEditingController();
  final enfl2 = TextEditingController();
  final enfl3 = TextEditingController();
  Enquiry({super.key, required this.plan});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextButton(onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  if (MediaQuery.sizeOf(context).width < MediaQuery.sizeOf(context).height) {
                    return Mobile();
                  } else if (MediaQuery.sizeOf(context).width < MediaQuery.sizeOf(context).height) {
                    return Desktop();
                  } else {
                    if (MediaQuery.sizeOf(context).width > 721) {
                      return Desktop();
                    } else {
                      return Mobile();
                    }
                  }
                }));
              },child: Icon(Icons.arrow_back, color: Colors.white,)),
              Text("Screen recorder")
            ],
          ),
        ),
        body: Column(
          children: [
            SizedBox(height: 50,),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 300,
                decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)), boxShadow: [BoxShadow(color: Colors.purple, blurRadius: 10, blurStyle: BlurStyle.outer)]),
                child: Padding(padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text("Enquiry form", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: Colors.purple)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Plan type: ", style: TextStyle(fontWeight: FontWeight.bold),),
                          Text(plan)
                        ],
                      ),
                      SizedBox(height:20),
                      TextField(
                        decoration: const InputDecoration(hintText: "Enter your name"),
                        controller: enfl,
                      ),
                      TextField(
                        decoration: const InputDecoration(hintText: "Enter mail ID"),
                        controller: enfl1,
                      ),
                      TextField(
                        decoration: const InputDecoration(hintText: "Enter purpose of use"),
                        controller: enfl2,
                      ),
                      if (plan == "Business")
                      TextField(
                        controller: enfl3,
                        decoration: const InputDecoration(hintText: "Enter business name"),
                      ),
                      const SizedBox(height: 30,),
                      ElevatedButton(onPressed: () {
                        enfl.clear();
                        enfl1.clear();
                        enfl2.clear();
                        enfl3.clear();
                        showDialog(context: context, builder: (context) {
                        return AlertDialog(
                          title: Text("Screen recorder"),
                          content: Text("Thanks for your purchase, we will send your payment form soon, stay focused on email"),
                          actions: [
                            TextButton(onPressed: () {
                              Navigator.of(context).pop();
                            }, child: Text("Ok", style: TextStyle(color: Colors.purple),))
                          ],
                        );
                        });
                      }, child: Text("Enquire"), style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween ,children: [
          Text("Abhineet Raj"),
          Row(children: [
            TextButton(onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
              return Home();
            })));}, child: Text("Home", style: TextStyle(color: Colors.white))),
            TextButton(onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
              return Blog();
            })));}, child: Text("Blogs", style: TextStyle(color: Colors.white),)),
            TextButton(onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
              return Projects();
            })));}, child: Text("Projects", style: TextStyle(color: Colors.white))),
            TextButton(onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
              return ContactForm();
            })));}, child: Text("Contact", style: TextStyle(color: Colors.white))),
          ],)
        ]),),
        body: Padding(padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/mg.png", width: 400),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Container(
                      width: 400,
                      child: Column(children: [
                        Text("Hi there, I am flutter developer", style: TextStyle(fontSize: 20, color: Colors.blue),),
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"),
                        Align(alignment: Alignment.centerLeft,child: ElevatedButton(onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: ((context) {return Blog();})));}, child: Text("Explore")))

                      ]),
                    ),
                  )
              ],)
            ],
          ),
        ),
      ),
    );
  }
}

class ContactForm extends StatelessWidget {
  const ContactForm({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
         appBar: AppBar(title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween ,children: [
          Text("Abhineet Raj"),
          Row(children: [
            TextButton(onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
              return Home();
            })));}, child: Text("Home", style: TextStyle(color: Colors.white))),
            TextButton(onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
              return Blog();
            })));}, child: Text("Blogs", style: TextStyle(color: Colors.white),)),
            TextButton(onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
              return Projects();
            })));}, child: Text("Projects", style: TextStyle(color: Colors.white))),
            TextButton(onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
              return ContactForm();
            })));}, child: Text("Contact", style: TextStyle(color: Colors.white))),
          ],)
        ]),),
        body: Padding(padding: EdgeInsets.all(10),child: Align(
          alignment: Alignment.center,
          child: Container(
            width: 400,
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),boxShadow: [BoxShadow(color: Colors.black, blurStyle: BlurStyle.outer, blurRadius: 10)]),
            child: Padding(padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Text("Contact me", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                TextField(decoration: InputDecoration(hintText:"Enter your name", border: OutlineInputBorder(borderSide: BorderSide(width: 2), borderRadius: BorderRadius.all(Radius.circular(10))))),
                SizedBox(height: 20,),
                TextField(decoration: InputDecoration(hintText:"Enter you email", border: OutlineInputBorder(borderSide: BorderSide(width: 2), borderRadius: BorderRadius.all(Radius.circular(10))))),
                SizedBox(height: 20,),
                Container(
                  height: 200,
                  width: 375,
                  child: TextFormField(
                    maxLines: 5,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      labelText: 'Enter your message',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: () {} , child: Padding(padding: EdgeInsets.all(10),child: Text("Send message", style: TextStyle(fontSize: 20, fontFamily: "Calibri"),)))
              ],
            ),),
          ),
        ),),
     ),
    );
  }
}

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween ,children: [
          Text("Abhineet Raj"),
          Row(children: [
            TextButton(onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
              return Home();
            })));}, child: Text("Home", style: TextStyle(color: Colors.white))),
            TextButton(onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
              return Blog();
            })));}, child: Text("Blogs", style: TextStyle(color: Colors.white),)),
            TextButton(onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
              return Projects();
            })));}, child: Text("Projects", style: TextStyle(color: Colors.white))),
            TextButton(onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
              return ContactForm();
            })));}, child: Text("Contact", style: TextStyle(color: Colors.white))),
          ],)
        ]),),
        body: SingleChildScrollView(
          child: Padding(padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    width: 300,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)) ,boxShadow: [BoxShadow(blurRadius: 10, blurStyle: BlurStyle.outer, color: Colors.black)]),
                    child: Padding(padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text("Project title", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),),
                          Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."),
                          ElevatedButton(onPressed: () {}, child: Text("link to details"))
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    width: 300,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)) ,boxShadow: [BoxShadow(blurRadius: 10, blurStyle: BlurStyle.outer, color: Colors.black)]),
                    child: Padding(padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text("Project title", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),),
                          Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."),
                          ElevatedButton(onPressed: () {}, child: Text("link to details"))
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    width: 300,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)) ,boxShadow: [BoxShadow(blurRadius: 10, blurStyle: BlurStyle.outer, color: Colors.black)]),
                    child: Padding(padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text("Project title", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),),
                          Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."),
                          ElevatedButton(onPressed: () {}, child: Text("link to details"))
                        ],
                      ),
                    ),
                  ),
                )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    width: 300,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)) ,boxShadow: [BoxShadow(blurRadius: 10, blurStyle: BlurStyle.outer, color: Colors.black)]),
                    child: Padding(padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text("Project title", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),),
                          Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."),
                          ElevatedButton(onPressed: () {}, child: Text("link to details"))
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    width: 300,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)) ,boxShadow: [BoxShadow(blurRadius: 10, blurStyle: BlurStyle.outer, color: Colors.black)]),
                    child: Padding(padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text("Project title", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),),
                          Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."),
                          ElevatedButton(onPressed: () {}, child: Text("link to details"))
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    width: 300,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)) ,boxShadow: [BoxShadow(blurRadius: 10, blurStyle: BlurStyle.outer, color: Colors.black)]),
                    child: Padding(padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text("Project title", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),),
                          Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."),
                          ElevatedButton(onPressed: () {}, child: Text("link to details"))
                        ],
                      ),
                    ),
                  ),
                )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Blog extends StatelessWidget {
  const Blog({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween ,children: [
          Text("Abhineet Raj"),
          Row(children: [
            TextButton(onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
              return Home();
            })));}, child: Text("Home", style: TextStyle(color: Colors.white))),
            TextButton(onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
              return Blog();
            })));}, child: Text("Blogs", style: TextStyle(color: Colors.white),)),
            TextButton(onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
              return Projects();
            })));}, child: Text("Projects", style: TextStyle(color: Colors.white))),
            TextButton(onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
              return ContactForm();
            })));}, child: Text("Contact", style: TextStyle(color: Colors.white))),
          ],)
        ]),),
        body: SingleChildScrollView(
          child: Padding(padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    width: 300,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)) ,boxShadow: [BoxShadow(blurRadius: 10, blurStyle: BlurStyle.outer, color: Colors.black)]),
                    child: Padding(padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text("Blog title", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),),
                          Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."),
                          ElevatedButton(onPressed: () {}, child: Text("Read this article"))
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    width: 300,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)) ,boxShadow: [BoxShadow(blurRadius: 10, blurStyle: BlurStyle.outer, color: Colors.black)]),
                    child: Padding(padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text("Blog title", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),),
                          Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."),
                          ElevatedButton(onPressed: () {}, child: Text("Read this article"))
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    width: 300,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)) ,boxShadow: [BoxShadow(blurRadius: 10, blurStyle: BlurStyle.outer, color: Colors.black)]),
                    child: Padding(padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text("Blog title", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),),
                          Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."),
                          ElevatedButton(onPressed: () {}, child: Text("Read this article"))
                        ],
                      ),
                    ),
                  ),
                )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    width: 300,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)) ,boxShadow: [BoxShadow(blurRadius: 10, blurStyle: BlurStyle.outer, color: Colors.black)]),
                    child: Padding(padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text("Blog title", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),),
                          Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."),
                          ElevatedButton(onPressed: () {}, child: Text("Read this article"))
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    width: 300,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)) ,boxShadow: [BoxShadow(blurRadius: 10, blurStyle: BlurStyle.outer, color: Colors.black)]),
                    child: Padding(padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text("Blog title", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),),
                          Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."),
                          ElevatedButton(onPressed: () {}, child: Text("Read this article"))
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    width: 300,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)) ,boxShadow: [BoxShadow(blurRadius: 10, blurStyle: BlurStyle.outer, color: Colors.black)]),
                    child: Padding(padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text("Blog title", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),),
                          Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."),
                          ElevatedButton(onPressed: () {}, child: Text("Read this article"))
                        ],
                      ),
                    ),
                  ),
                )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
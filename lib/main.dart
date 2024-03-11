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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;




  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar:AppBar(
        backgroundColor:Colors.yellow,
        elevation:0,

        title:Icon(Icons.menu),
      ),
      body:SafeArea(
        child:SingleChildScrollView(
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children:<Widget> [
             Container(
               width:double.infinity,
               decoration:const BoxDecoration(
                 color:Colors.yellow,
                 borderRadius:BorderRadius.vertical(bottom:Radius.circular(20),)
               ),
               padding:EdgeInsets.all(20.0),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Find your",style:TextStyle(color:Colors.black87,fontSize:25)),
                  const Text("Japense Anime",style:TextStyle(color:Colors.black87,fontSize:40,fontFamily:'Roboto')),
                  Container(
          
                    decoration:BoxDecoration(
                      color:const Color.fromRGBO(255, 243, 243,1),
                      borderRadius:BorderRadius.circular(15),
                    ),
                    padding:EdgeInsets.all(6),
                    child:const TextField(
                      decoration:InputDecoration(
                        prefixIcon:Icon(Icons.search),
                        border:InputBorder.none,
                        // prefix:Icon(Icons.search,color:Colors.black87,),
                        hintText:"Search you are looking for",
                        hintStyle:TextStyle(color:Colors.grey,fontSize:15),
                      ),
                    ),
                  ),
                  SizedBox(height:50)
                ],
              ),
             ),
              const SizedBox(height:10,),
              Padding(
                  padding:const EdgeInsets.all(10),
                child: Column(
                  children: [
                    const Text("Top Today",style:TextStyle(fontSize:15,fontWeight: FontWeight.bold),),
                    Container(
                      height:200,
                      child:ListView(
                        scrollDirection:Axis.horizontal,
                        children: [
                          promoCard("assets/images/one.jpg"),
                          promoCard("assets/images/two.jpg"),
                          promoCard("assets/images/three.jpg"),
                          promoCard("assets/images/five.jpg"),
                          promoCard("assets/images/six.jpg"),
                          promoCard("assets/images/one.jpg"),
                          promoCard("assets/images/two.jpg"),
                        ],
                      ),
                    )
                    ,Container(
                      
                      height:200,
                    width:double.infinity,
                    decoration:BoxDecoration(
                      borderRadius:BorderRadius.circular(30),
                      image:DecorationImage(
                        fit:BoxFit.cover,
                        image:AssetImage('assets/images/one.jpg')
                      )
                    ),
          
          
                      child:Container(
          
                        decoration:BoxDecoration(
                          gradient:LinearGradient(
                            begin:Alignment.bottomRight,
                              colors:[
                                Colors.black87.withOpacity(.8),
                                Colors.black.withOpacity(.1)
                              ]
                          ),
          
                          borderRadius:BorderRadius.circular(30),
                        ),
                        child:Align(
                          alignment:Alignment.bottomLeft,
                          child:Padding(
                            padding:EdgeInsets.all(20),
                            child:Text("Best Design",style:TextStyle(color:Colors.white,fontSize:22),),
                          )
                        ),
                      ),
                    ),
                  ],
                ),
          
              )
            ],
          
          ),
        ),
      )
    );
  }

  Widget promoCard(image){
    return AspectRatio(
      aspectRatio:2/3,
      child:Container(
        decoration:BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color:Colors.orange,
          image: DecorationImage(
            fit:BoxFit.cover,
            image:AssetImage(image)
          ),
        ),
        margin:EdgeInsets.all(10),
        child:Container(
          decoration:BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient:LinearGradient(
                stops:[.1,.9],
                  begin:Alignment.bottomRight,
                  colors:[
                    Colors.black87.withOpacity(.8),
                    Colors.black.withOpacity(.1)
                  ]
              )
          ),
        ),

      ),
    );
  }


}





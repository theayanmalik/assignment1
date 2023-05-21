import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'INDIA',
      theme: ThemeData(




        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'India'),
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



  List <String> imagesList = [ 
    
    'https://media.istockphoto.com/id/1288854112/vector/large-group-of-people-forming-india-map-standing-together-flat-vector-illustration.jpg?s=612x612&w=0&k=20&c=3B4zqlNK3u_BUOGr6A69z5jeAYRa0-_H6QWl3pLEsn8=' ,
    'https://images.unsplash.com/photo-1631194758628-71ec7c35137e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1032&q=80',
    'https://media.istockphoto.com/id/845126892/photo/group-of-happy-gypsy-indian-children-desert-village-india.jpg?s=612x612&w=0&k=20&c=3Kd0tTudpaYuSAYpspvx_bIWwZVk1Z19GZZZNWdxKMk=',
    'https://media.istockphoto.com/id/1417407351/photo/traditional-indian-cuisine-assorted-indian-food-on-table-in-restaurant-appetizers-and-dishes.jpg?b=1&s=170667a&w=0&k=20&c=Wn3LZQH0bOTs0PvY8QUpM20LJIIu7XDgoEjvN0UJfUM=',
    'https://images.unsplash.com/photo-1571893652827-a3e071ab463b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fElORElBTiUyMENVTFRVUkV8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=1000&q=60',
    'https://images.unsplash.com/photo-1463592177119-bab2a00f3ccb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8SU5ESUFOJTIwQ1VMVFVSRXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=1000&q=60',

  ];



  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center( 

        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.

        child:FullScreenWidget(child:imagesList , disposeLevel: disposeLevel)
      )
      );

  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
    required this.imagesList,
  });

  final List<String> imagesList;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      

        itemCount: imagesList.length ,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10 , ), itemBuilder:(content, index) {
      return Container(


          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
      image: DecorationImage(
      image: NetworkImage(imagesList[index]),
      fit: BoxFit.cover,



      )),
      );
    });
  }
}

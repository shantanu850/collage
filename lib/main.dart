import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Collage',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Supreme Knowledge Foundation Group of Institutions",style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold,fontSize:14),),
            Text("Approved by AICTE, Affiliated to MAKAUT (formerly known as WBUT), Affiliated to WBSCT&VE&SD and Recognised by UGC",style: TextStyle(color: Colors.grey[700],fontWeight: FontWeight.bold,fontSize:8),),
          ],
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Image.network("https://career.webindia123.com/career/institutes/aspupload/Uploads/west-bengal/24257/logo.jpg"),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network("https://images.static-collegedunia.com/public/college_data/images/appImage/1518162183collegeskypano.jpg?tr=c-force"),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(38.0),
              child: Text("About Us",style: TextStyle(fontWeight: FontWeight.bold,fontSize:22),),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text("Supreme Knowledge Foundation Group of Institutions, formerly Sir J. C. Bose School of Engineering, is an engineering college situated at Mankundu in Hooghly, West Bengal, India. The college is affiliated to the Maulana Abul Kalam Azad University of Technology",style: TextStyle(fontSize: 16),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text("Important Links",style: TextStyle(fontWeight: FontWeight.bold,fontSize:22),),
          ),
          /*Center(
            child: GestureDetector(
                onTap: ()=>launch("http://skf.edu.in/notice/SKF-3146.pdf"),
                child: Text("Merit list",style: TextStyle(decoration: TextDecoration.underline,color: Colors.blue),)),
          ),*/
          Center(
            child: GestureDetector(
                onTap: ()=>launch("http://skf.edu.in"),
                child: Text("Link 1",style: TextStyle(decoration: TextDecoration.underline,color: Colors.blue),)),
          ),
          Center(
            child: GestureDetector(
                onTap: ()=>launch("http://skf.edu.in/"),
                  child: Text("Link 2",style: TextStyle(decoration: TextDecoration.underline,color: Colors.blue),)),
          ),
          Center(
            child: GestureDetector(
                onTap: ()=>launch("http://skf.edu.in/"),
                child: Text("Link 3",style: TextStyle(decoration: TextDecoration.underline,color: Colors.blue),)),
          ),
          Center(
            child: GestureDetector(
                onTap: ()=>launch("http://skf.edu.in/"),
                child: Text("Link 4",style: TextStyle(decoration: TextDecoration.underline,color: Colors.blue),)),
          ),
          Center(
            child: GestureDetector(
                onTap: ()=>launch("http://skf.edu.in/"),
                child: Text("Link 5",style: TextStyle(decoration: TextDecoration.underline,color: Colors.blue),)),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: FlatButton(
                  color: Colors.blue,
                  onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>MeritList())),
                  child: Text("Go To Merit List",style: TextStyle(decoration: TextDecoration.none,color: Colors.white),)),
            ),
          ),
        ],
      ),
    );
  }
}

class MeritList extends StatefulWidget {
  const MeritList({Key? key}) : super(key: key);

  @override
  _MeritListState createState() => _MeritListState();
}

class _MeritListState extends State<MeritList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Merit List"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(38.0),
                child: Text("Merit List",style: TextStyle(fontWeight: FontWeight.bold,fontSize:22),),
              ),
            ),
            Center(
              child: GestureDetector(
                  onTap: ()=>launch("http://skf.edu.in/notice/SKF-3146.pdf"),
                  child: Text("Merit List 1",style: TextStyle(decoration: TextDecoration.underline,color: Colors.blue),)),
            ),Center(
              child: GestureDetector(
                  onTap: ()=>launch("http://skf.edu.in/notice/SKF-3146.pdf"),
                  child: Text("Merit List 1",style: TextStyle(decoration: TextDecoration.underline,color: Colors.blue),)),
            ),
            Center(
              child: GestureDetector(
                  onTap: ()=>launch("http://skf.edu.in/notice/SKF-3146.pdf"),
                  child: Text("Merit List 1",style: TextStyle(decoration: TextDecoration.underline,color: Colors.blue),)),
            ),
            Center(
              child: GestureDetector(
                  onTap: ()=>launch("http://skf.edu.in/notice/SKF-3146.pdf"),
                  child: Text("Merit List 1",style: TextStyle(decoration: TextDecoration.underline,color: Colors.blue),)),
            ),
            Center(
              child: GestureDetector(
                  onTap: ()=>launch("http://skf.edu.in/notice/SKF-3146.pdf"),
                  child: Text("Merit List 1",style: TextStyle(decoration: TextDecoration.underline,color: Colors.blue),)),
            ),
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Center(
                child: GestureDetector(
                    onTap: ()=>launch("http://skf.edu.in/notice/"),
                    child: Text("Go To Website",style: TextStyle(decoration: TextDecoration.underline,color: Colors.blue),)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

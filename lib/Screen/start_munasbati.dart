import 'dart:developer';
import 'dart:ffi';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:munasbati/Screen/fetchadata.dart';
import 'package:munasbati/Widtes/colors.dart';
import '../model/occasion.dart';
import 'Animated/slider/slider.dart';
import 'occasion_details .dart';

// import 'package:firebase_storage/firebase_storage.dart';
class startPage extends StatefulWidget {
  const startPage({super.key});

  @override
  State<startPage> createState() => _startPageState();
}

class _startPageState extends State<startPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // locale: const Locale('ar'),
      // supportedLocales: const [
      //   Locale('ar'),
      //   Locale('en'),
      // ],
      // localizationsDelegates: const [
      // GlobalMaterialLocalizations.delegate,
      // GlobalCupertinoLocalizations.delegate,
      // GlobalWidgetsLocalizations.delegate,
      // ],
      title: ' مناسبتي',
      theme: ThemeData(
          fontFamily: "Cairo",

          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.

          primaryColor: Colors.white,
          hintColor: Colors.black),
      home: MyHomePage(title: 'مناسبتي '),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key,  this.title}) : super(key: key);
  

  // getdata() async {
  //   CollectionReference addNew =
  //       FirebaseFirestore.instance.collection('addNew');

  //   await addNew.get().then((QuerySnapshot snapshot) {
  //     snapshot.docs.forEach((DocumentSnapshot doc) {
  //       print(doc.data());
  //       print("++++++++++++++++++++++++");
  //     });
  //   });
  // }

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String ?title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
  // CollectionReference department =
  //     FirebaseFirestore.instance.collection("Department");
  // getDepartment() async {
  //   var allDepartment = await department.get();
  //   allDepartment.docs.forEach((element) {
  //     setState(() {
  //       listDepartment.add(element.data());
  //     });
  //     print(listDepartment);
  //   });
  // Nasted Collection
  // CollectionReference contentDescription = FirebaseFirestore.instance
  //     .collection("Department")
  //     .doc('0i03zAKvSSlZMXvZ2vFd')
  //     .collection('contentDep');

  // await contentDescription.get().then((value) {
  //   value.docs.forEach((element) {
  //     print(element.data());
  //     print('--------------------------------');
  //   });
  // });

  // show jaist one teble
  // var doc = FirebaseFirestore.instance
  //     .collection('Department')
  //     .doc('0i03zAKvSSlZMXvZ2vFd');
  // await doc.get().then((value) {
  //   print("${value.data()}");
  // });

  // get add data
  // FirebaseFirestore.instance
  //     .collection('Department')
  //     .get()
  //     .then((QuerySnapshot snapshot) {
  //   snapshot.docs.forEach((DocumentSnapshot doc) {
  //     print(doc.data());
  //     print("++++++++++++++++++++++++");
  //   });
  // });
  // }
  // FirebaseFirestore.instance.collection("Department").get().then((value) {
  //   value.docs.forEach((element) {
  //     print(element.data());
  //     print(
  //         "____________________________++++++++++++++_____________________");
  //   });
  // });
  // }
  // QuerySnapshot snapshot =await usersRef.
  // await addNew.get().then((QuerySnapshot snapshot) {
  //   snapshot.docs.forEach((DocumentSnapshot doc) {
  //     print(doc.data());
  //     print("++++++++++++++++++++++++");

  //   });
  // });

  @override
  void initState() {
    // getDepartment();

    super.initState();
  }

  CollectionReference department =
      FirebaseFirestore.instance.collection("Department");


  // CollectionReference contentDescription = FirebaseFirestore.instance
  //     .collection("Department")
  //     .doc('0i03zAKvSSlZMXvZ2vFd')
  //     .collection('contentDep');
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
// 1
    return Scaffold(
        backgroundColor:white,
// 2b

        appBar: AppBar(
            backgroundColor: bkbrouwn,
            centerTitle: true,
            title: Center(child: Text("${widget.title}")),
            leading: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CarSlider(),
                    ));
              },
              icon: Icon(Icons.chevron_left, size: 40.9),
            )),
// 3
        body: StreamBuilder<QuerySnapshot>(
          stream: department.snapshots(),
          
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Text('Error ');
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Text("loading ... ");
            }
            if (snapshot.hasData) {
              return GridView.builder(
                // scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 10,
                    mainAxisExtent: 390),
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      
                      GestureDetector(
                        onTap: () {
                          
                           Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => text(paath:  "${snapshot.data!.docs[index]['nameTitle']}" ,),
                  
                  ),
                );
                        },
                        child: Container(
                          height: size.height * .4,
                          width: size.width / 2,
                          decoration: BoxDecoration(
                              color: Colors.deepOrange[50],
                             borderRadius: BorderRadius.only(
                                   topLeft: Radius.circular(50),
                                   bottomRight: Radius.circular(50))),
                           margin: EdgeInsets.all(10),
                          child: ListTile(
                            tileColor: bkbrouwn,
                            title: Image.network("${snapshot.data!.docs[index]['imageUrl']}"),                           subtitle: Text(                               "${snapshot.data!.docs[index]['Description']}",                               textAlign: TextAlign.center),                           leading: Text(
                              "${snapshot.data!.docs[index]['nameTitle']}"),
                      
                                    ),
                          ),
                      ),
                      
                    ],
                  );
                    // return Text("${snapshot.data!.docs[index]['nameTitle']}");
                },
              );
            }
            return Text("loading");
          },
        )

// 4
//         child: ListView.builder(
// // 5
//           itemCount: listDepartment.length,
// // 6
//           itemBuilder: (BuildContext context, int index) {
//             return GestureDetector(
//               //
//                onTap: () async {
// // // 9
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) {
// // 10
//                       var occasion = Occasion;
//                       return OccasionDetail(recipe: Occasion.samples[index]);
//                     },
//                   ),
//                 );
//               },
//               //
//               child: ListTile(
//                 title: Text("${listDepartment}"),
//                 subtitle: Text("${listDepartment[index]['Description']}"),

//               ),
//             );
// // 7
// //             return GestureDetector(
// // // 8
// //               onTap: () async {
// // // 9
// //                 Navigator.push(
// //                   context,
// //                   MaterialPageRoute(
// //                     builder: (context) {
// // // 10
// //                       var occasion = Occasion;
// //                       return OccasionDetail(recipe: Occasion.samples[index]);
// //                     },
// //                   ),
// //                 );
// //               },
// // // 11
// //               child: buildRecipeCard(Occasion.samples[index]),
// //             );
//           },
//         ),
        );
  }
}

import 'dart:io';
import 'dart:ffi';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:munasbati/Screen/start_munasbati.dart';
import 'package:munasbati/Widtes/colors.dart';
class text extends StatefulWidget {
  String paath;
text({
   required this.paath,
    super.key,
  });

  @override
  State<text> createState() => _textState();
}

class _textState extends State<text> {
  List listDepartment = [];
  getDepartment() async {
    CollectionReference contentDescription = FirebaseFirestore.instance
        .collection("Department")
        .doc('0i03zAKvSSlZMXvZ2vFd')
        .collection('contentDep');

    await contentDescription.get().then((value) {
      value.docs.forEach((element) {
        setState(() {
          listDepartment.add(element.data());
        });
        // print(getDepartment());
        print('--------------------------------');
      });
    });
  }

  List listDepartment1 = [];
  CollectionReference department =
      FirebaseFirestore.instance.collection("Department");
  getDepartment2() async {
    var allDepartment = await department.get();
    allDepartment.docs.forEach((element) {
      setState(() {
        listDepartment1.add(element.data());
      });
      print(listDepartment);
    });
  }

  @override
  void initState() {
    getDepartment();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bkbrouwn,
        title:  Text(widget.paath),
        centerTitle: true,
      ),
        body: SafeArea(
      child: ListView.builder(
          // // 5
          itemCount: listDepartment.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
                child: Column(
              children: [
                ListTile(
                  tileColor: Color.fromARGB(186, 0, 0, 0),
                  title: Text("${listDepartment[index]['dsecriptionDep']}", style: TextStyle(color: white)),
                  leading: Icon(
                    Icons.settings_ethernet_sharp,
                    size: 70,
                    color: Colors.blue,
                  ),
                  subtitle: Text(
                          style: TextStyle(color: white),
                      "الفرق بين اللحن والتوزيع الاغنيه بتتكون من 3 حاجات كلام ولحن وتوزيع طيب الكلام وده معروف اللحن "),
                ),
                ListTile(
                  tileColor: Color.fromARGB(172, 36, 0, 0),
                  title: Text("${listDepartment[index]['Ingredient']}",
                          style: TextStyle(color: white)),
                  leading: Icon(
                    Icons.shopping_bag,
                    size: 70,
                    color: white,
                  ),
                  subtitle: Text(
                          style: TextStyle(color: white),
                      "هدايا لكل المناسبات في نفس المكان، والجودة والتميز لنا عنوان. بالأمل والإتقان والمحبة الأكيدة، أتينا لكم بأجمل"),
                ),
                ListTile(
                  tileColor: Color.fromARGB(244, 250, 201, 54),
                  title: Text("${listDepartment[index]['dsecriptionDep2']}",
                          style: TextStyle(color: Colors.black)),
                  leading: Icon(
                    Icons.home_work_outlined,
                    size: 70,
                    color: Colors.black,
                  ),
                  subtitle: Text( style: TextStyle(color: Colors.black),
                      "كوشة حديثه للمناسبات الراقية عباره عن ديكور خشبي مموج بداخله إضاءه ليد اللون والمقاس يختلف السعر حسب طلب "),
                ),
                ListTile(
                  title: Text("${listDepartment[index]['dsecriptionDep3']}"),
                  leading: Icon(
                    Icons.photo,
                    size: 70,
                    color: bkbrouwn,
                  ),
                  subtitle: Text(
                      "محلات تصوير في محلات معينه و اسماء محلات تصوير فوتوغرافي في لبنان، و اسم مصور فوتوغرافي "),
                ),
                
                ListTile(
                  tileColor: Color.fromARGB(92, 209, 63, 63),
                    title: Text("${listDepartment[index]['dsecriptionDep4']}",
                          style: TextStyle(color: white),
                        ),
                    leading: Icon(
                      Icons.dry_cleaning_outlined,
                      size: 70,
                      color: Color.fromARGB(255, 0, 119, 134),
                    ),
                    subtitle: Text(
                        "محلات الخياط التجارية هي شركة ذات نشاط تجاري وتصميم الملابس",
                          style: TextStyle(color: white),
                        )),
                ListTile(
                  tileColor:  Color.fromARGB(255, 141, 2, 196),
                  title: Text("${listDepartment[index]['dsecriptionDep5']}",
                        style: TextStyle(color: white),
                      ),
                  leading: Icon(
                    Icons.palette_rounded,
                    size: 70,
                    color: white,
                  ),
                  subtitle: Text(
                      "حتفالات مختلفة وفريدة من نوعها وتزين زواياه ومحلاته ",
                        style: TextStyle(color:white),
                      ),
                ),
                ListTile(
                  tileColor:Color.fromARGB(255, 2, 189, 164),
                  title: Text("${listDepartment[index]['dsecriptionDep6']}",style: TextStyle(color: white),),
                  leading: Icon(
                    Icons.feed,
                    size: 70,
                    color: Color.fromARGB(255, 0, 36, 32),
                  ),
                  subtitle: Text(
                          style: TextStyle(color: white),
                      "نعمل باحترافية تامة لإخراج افكاركم ومنتجاتكم بشكل فاخر تصميم كروت دعاية واعلان من أهم خدمات تصميم الجرافيك "),
                ),
                ListTile(
                  tileColor: Color.fromARGB(244, 48, 48, 47),
                  title: Text("${listDepartment[index]['dsecriptionDep7']}",style: TextStyle(color: white),),
                  leading: Icon(
                    Icons.deck_outlined,
                    size: 70,
                    color: white,
                  ),
                  subtitle: Text(
                          style: TextStyle(color: white),
                      "تحديد المشروبات التي سيقدمها مطعمك، وتقسيم المنيو لصفحات تناسبها مع وضع أسعارها، عليك أن تضمن أن يتوفر لديك مشروب "),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FloatingActionButton(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.keyboard_double_arrow_left_sharp,
                            color: bkbrouwn),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyHomePage(
                                        title: "مناسبتي",
                                      )));
                        }),
                  ],
                )
              ],
            ));
          }),
    ));
  }
}



//  

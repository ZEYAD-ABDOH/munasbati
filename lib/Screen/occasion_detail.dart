import 'package:flutter/material.dart';
import '../model/occasion.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class RecipeDetail extends StatefulWidget {
  final Occasion recipe;
  const RecipeDetail({Key? key, required this.recipe}) : super(key: key);
  @override
  _RecipeDetailState createState() {
    return _RecipeDetailState();
  }
}

class _RecipeDetailState extends State<RecipeDetail> {
  // getDatat() async {
  //   FirebaseFirestore.instance.collection("Admin").get().then((value) {
  //     value.docs.forEach((element) {
  //       print(element.data());
  //       print("*************************");
  //     });
  //   });
  // }

  // DocumentReference docone = FirebaseFirestore.instance
  //     .collection("Admin ")
  //     .doc("TwZmtaruQswxdeXuIv9C");
  // DocumentReference doctwo = FirebaseFirestore.instance
  //     .collection("Department")
  //     .doc("rYBbw6FsmCAWS6Jl1lKO");

  // batchWrite() async {
  //   WriteBatch batch = FirebaseFirestore.instance.batch();
  //   batch.delete(docone);
  //   batch.update(doctwo, {"title": "hello world"});
  //   batch.commit();
  // }

  @override
  void initState() {
    // batchWrite();
    super.initState();
  }

  int _sliderVal = 1;
  @override
  Widget build(BuildContext context) {
    // 1
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),
      // 2
      body: SafeArea(
        // 3
        child: Column(
          children: <Widget>[
            // 4
            SizedBox(
              height: 100,
              width: double.infinity,
              child: Image(image: AssetImage(widget.recipe.imageUrl)),
            ),
            // 5
            const SizedBox(
              height: 3,
            ),
            // 6
            Text(
              widget.recipe.label,
              style: const TextStyle(fontSize: 18),
            ),

            // 7
            Expanded(
              // 8
              child: ListView.builder(
                padding: const EdgeInsets.all(7.0),
                itemCount: widget.recipe.ingredients.length,
                itemBuilder: (BuildContext context, int index) {
                  final ingredient = widget.recipe.ingredients[index];
                  // 9
                  // return Text('${ingredient.quantity * _sliderVal} '
                  //     '${ingredient.measure} '
                  //     '${ingredient.name}');
                  return ListTile(
                    leading: const Icon(Icons.home),
                    title: Text('${ingredient.name}'),
                    onTap: () {},
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

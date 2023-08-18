import 'package:flutter/material.dart';

import '../model/occasion.dart';

// import 'recipe_service.dart';

class OccasionDetail extends StatefulWidget {
  final Occasion recipe;
  const OccasionDetail({Key? key, required this.recipe}) : super(key: key);
  @override
  _OccasionDetailState createState() {
    return _OccasionDetailState();
  }
}

class _OccasionDetailState extends State<OccasionDetail> {
  // int _sliderVal = 1;
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
              child: Image(image: NetworkImage(widget.recipe.imageUrl)),
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
                      leading: const CircleAvatar(
                       radius: 20,
                       child: const Icon(Icons.home),
                       
                      ),
                      subtitle: Text('${widget.recipe.dces}'),
                      trailing:Icon(Icons.home),
                      title: Text('${ingredient.name}'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
// 10
                              return OccasionDetail(
                                  recipe: Occasion.samples[index]);
                            },
                          ),
                        );
                      });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

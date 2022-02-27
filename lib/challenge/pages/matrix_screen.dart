import 'package:challenge_task/challenge/widget/product_card.dart';
import 'package:challenge_task/challenge/widget/reusable_widget.dart';
import 'package:flutter/material.dart';

import '../const/functions/functions.dart';
import '../model/model.dart';
import '../widget/card.dart';

class MatrixScreen extends StatefulWidget {
  const MatrixScreen({Key? key}) : super(key: key);

  @override
  _MatrixScreenState createState() => _MatrixScreenState();
}

class _MatrixScreenState extends State<MatrixScreen> {
  double avg = 0;

  @override
  void initState() {
    super.initState();
    avg = getAveragePrice();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CardWidget(
                  child: Column(
                    children: [
                      buildText("Number of items:",
                          style: const TextStyle(color: Colors.white)),
                      buildSizedBox(),
                      buildText("${json.length.toString()} items",
                          style: const TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
                CardWidget(
                  child: Column(
                    children: [
                      buildText("Average Price:",
                          style: const TextStyle(color: Colors.white)),
                      buildSizedBox(),
                      buildText("\$${avg.toString().split(".")[0]}",
                          style: const TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ],
            ),
            ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  List<String> tags = json[index]["tags"];
                  return ProductCardWidget(index: index, tags: tags);
                },
                separatorBuilder: (context, index) => buildSizedBox(),
                itemCount: json.length),
          ],
        ),
      ),
    );
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:challenge_task/challenge/widget/reusable_widget.dart';
import 'package:flutter/material.dart';
import '../model/model.dart';

class ProductCardWidget extends StatelessWidget {
  ProductCardWidget({Key? key, required this.index, required this.tags})
      : super(key: key);
  int index;
  List<String> tags = [];

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                FractionallySizedBox(
                  child: buildCardImage(image: json[index]["picture"]),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildText("Company: ${json[index]["company"]}"),
                      buildSizedBox(),
                      buildText("Buyer:${json[index]["buyer"]}"),
                      buildSizedBox(),
                      buildText("Price:${json[index]["price"]}"),
                      buildSizedBox(),
                      buildText("Tags:"),
                      buildSizedBox(),
                      Wrap(
                          children: tags
                              .map(
                                (e) => InkWell(
                              onTap: () {},
                              child: Container(
                                margin: const EdgeInsets.all(2),
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Text(
                                  e,
                                  style: const TextStyle(color: Colors.blue),
                                ),
                              ),
                            ),
                          )
                              .toList())
                    ],
                  ),
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: json[index]["isActive"]
                          ? Colors.tealAccent
                          : Colors.red,
                    ),
                    Text(json[index]["isActive"] ? "Active" : "Inactive",
                        overflow: TextOverflow.ellipsis)
                  ],
                ),
              ],
            ),
          ),
        ),

    );
  }
}

Widget buildPlaceHolder(){
  return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey
      ),
      child:Center(child: Text("loading"),)

  );
}

Widget buildCardImage({required String image}){
  return Container(
    margin: EdgeInsets.only(right: 10),
    height: 200,
    width: 100,
    clipBehavior: Clip.antiAlias,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10)
    ),
    child: CachedNetworkImage(
      imageUrl: image,
      placeholder: (context, url) =>buildPlaceHolder(),
      errorWidget: (context, url, error) => Icon(Icons.error),
      fit: BoxFit.cover,
    ),
  );
}

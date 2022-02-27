import 'package:challenge_task/challenge/widget/reusable_widget.dart';
import 'package:flutter/material.dart';
import 'graph.dart';
import 'matrix_screen.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  _LayoutScreenState createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: buildText("Challenge",
              style: const TextStyle(color: Colors.black)),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          bottom: const TabBar(
            indicatorColor: Colors.black45,
            tabs: [
              Tab(
                  icon: Icon(
                Icons.production_quantity_limits,
                color: Colors.teal,
              )),
              Tab(
                  icon: Icon(
                Icons.auto_graph,
                color: Colors.teal,
              )),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            MatrixScreen(),
            GraphScreen(),
          ],
        ),
      ),
    );
  }
}

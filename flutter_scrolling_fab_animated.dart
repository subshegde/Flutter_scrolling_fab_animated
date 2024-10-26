import 'package:flutter/material.dart';
import 'package:flutter_scrolling_fab_animated/flutter_scrolling_fab_animated.dart';

class ScrollingFabAnimatedExample extends StatefulWidget {
  const ScrollingFabAnimatedExample({Key? key}) : super(key: key);

  @override
  _ScrollingFabAnimatedExampleState createState() => _ScrollingFabAnimatedExampleState();
}

class _ScrollingFabAnimatedExampleState extends State<ScrollingFabAnimatedExample> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter scrolling fab animated'),),
      body:const Column(),
      floatingActionButton: ScrollingFabAnimated(
        width: 150,
        icon: const Icon(Icons.add),
        text: const Text('Add'),
        color: Colors.blue,
        onPress: () {
        print('pressed');
        },
        onLongPress: (){
          print('long pressed');
        },
        scrollController: _scrollController,
        animateIcon: true,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void showBottomSheet() {
    // showModalBottomSheet(context: context, builder: (context) => Container());
    showModalBottomSheet(
      // barrierColor: Colors.red,
      // backgroundColor: Colors.amber,
      // isDismissible: false,
      // enableDrag: false,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      context: context,
      builder: (context) => SizedBox(
        // height: 100,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              height: 10,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(5)),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () => showBottomSheet(),
                child: const Text('Click Me')),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoPageScaffold(
          child: CupertinoContextMenu(
              actions: [
                CupertinoContextMenuAction(
                  child: Text('Add to Favorites'),
                  onPressed: () {
                    // Your logic here
                    // Close the context menu
                    Navigator.of(context).pop();
                  },
                ),
                CupertinoContextMenuAction(
                  child: Text('Download'),
                  onPressed: () {
                    // Your logic here
                    // Close the context menu
                    Navigator.of(context).pop();
                  },
                ),
                CupertinoContextMenuAction(
                  child: Text('Report this image'),
                  onPressed: () {
                    // Your logic here
                    // Close the context menu
                    Navigator.of(context).pop();
                  },
                )
              ],
              child: Image.network(
                  'https://www.kindacode.com/wp-content/uploads/2020/10/dog_sample.jpg'))
      ),
    );
  }
}
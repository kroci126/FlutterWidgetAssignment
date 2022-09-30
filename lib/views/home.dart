part of 'pages.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          elevation: 0,
        ),
        body: Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: double.infinity,
            child: const Text(
              "Hello World",
              textAlign: TextAlign.center,
            )));
  }
}

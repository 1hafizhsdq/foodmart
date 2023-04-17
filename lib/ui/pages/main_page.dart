part of 'pages.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          SafeArea(
            child: Container(
              color: 'FAFAFC'.toColor(),
            ),
          ),
          SafeArea(
            child: Center(
              child: Text("body"),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomButtonNavBar(
              onTap: (index) {},
            ),
          ),
        ],
      ),
    );
  }
}

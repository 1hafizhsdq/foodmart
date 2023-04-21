part of 'pages.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({super.key});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // HEADER
        Container(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          color: Colors.white,
          height: 100,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'FoodMarket',
                    style: blackFontStyle1,
                  ),
                  Text(
                    'Let’s get some foods',
                    style: greyFontStyle.copyWith(
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage('assets/ic_profile.png'),
                    fit: BoxFit.cover
                  ),
                ),
              )
            ],
          ),
        )
        // LIST OF FOOD
        // LIST OF FOOD (TABS)
      ],
    );
  }
}

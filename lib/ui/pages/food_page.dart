part of 'pages.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({super.key});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    double listItemWidth =
        MediaQuery.of(context).size.width - 2 * defaultMargin;

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
                      fit: BoxFit.cover),
                ),
              )
            ],
          ),
        ),
        // LIST OF FOOD
        Container(
          height: 258,
          width: double.infinity,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Row(
                children: mockFoods
                    .map(
                      (e) => Padding(
                        padding: EdgeInsets.only(
                          left: (e == mockFoods.first) ? defaultMargin : 0,
                          right: defaultMargin,
                        ),
                        child: FoodCard(e),
                      ),
                    )
                    .toList(),
              )
            ],
          ),
        ),
        // LIST OF FOOD (TABS)
        Container(
          width: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              CustomTabBar(
                selectedIndex: selectedIndex,
                titles: ['New Taste', 'Popular', 'Recomended'],
                onTap: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              ),
              SizedBox(
                height: 16,
              ),
              Builder(
                builder: (_) {
                  List<Food> foods = (selectedIndex == 0)
                      ? mockFoods
                      : (selectedIndex == 1)
                          ? []
                          : [];
                  return Column(
                    children: foods
                        .map((e) => Padding(
                              padding: EdgeInsets.fromLTRB(
                                  defaultMargin, 0, defaultMargin, 16),
                              child: FoodListItem(
                                  food: e, itemWidth: listItemWidth),
                            ))
                        .toList(),
                  );
                },
              ),
            ],
          ),
        ),
        SizedBox(
          height: 80,
        ),
      ],
    );
  }
}

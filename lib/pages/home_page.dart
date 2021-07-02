part of 'pages.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/photo.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello, Jess!',
                            style: whiteTextStyle.copyWith(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Good Morning',
                            style: whiteTextStyle.copyWith(fontSize: 16),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    'Let’s enjoy your\nVacation',
                    style: whiteTextStyle.copyWith(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 30),
                    child: Container(
                      height: 35,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          CustomTabbar(
                            titles: [
                              'All',
                              'Asia',
                              'Amerika',
                              'Africa',
                              'Europe'
                            ],
                            selectedIndex: selectedIndex,
                            onTap: (index) {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 30,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: "403d3d".toColor().withOpacity(0.10),
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search, color: greyColor),
                            border: InputBorder.none,
                            hintText: 'Search your Vacation Heaven')),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Popular Countries',
                          style: whiteTextStyle.copyWith(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        Text('See All', style: greyTextStyle),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 30),
                    child: Container(
                      height: 170,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          CityCard(
                            City(
                                id: 1,
                                name: 'Bali',
                                imageUrl: 'assets/city1.png'),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          CityCard(
                            City(
                                id: 2,
                                name: 'Paris',
                                imageUrl: 'assets/city2.png'),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          CityCard(
                            City(
                                id: 3,
                                name: 'England',
                                imageUrl: 'assets/city3.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Ongoing Events',
                          style: whiteTextStyle.copyWith(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        Text('See All', style: greyTextStyle),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Container(
                      height: 230,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          EventCard(
                            Event(
                                id: 1,
                                name: 'Rio Carnival,',
                                city: 'Rio de Jenairo',
                                country: 'Brazil',
                                imageUrl: 'assets/event1.png'),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          EventCard(
                            Event(
                                id: 2,
                                name: 'Lembah Baliem Festival,',
                                city: 'Raja Ampat',
                                country: 'Indonesia',
                                imageUrl: 'assets/event2.jpg'),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          EventCard(
                            Event(
                                id: 3,
                                name: 'Sapporo Snow /nFestival',
                                city: 'Kyoto',
                                country: 'Japan',
                                imageUrl: 'assets/event3.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        width: MediaQuery.of(context).size.width - 30,
        height: 65,
        margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: "464747".toColor(),
          borderRadius: BorderRadius.circular(23),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ButtomNavBar(
              imageUrl: 'assets/home_icon.png',
              isActive: true,
            ),
            ButtomNavBar(
              imageUrl: 'assets/notif_icon_normal.png',
              isActive: false,
            ),
            ButtomNavBar(
              imageUrl: 'assets/menu_icon_normal.png',
              isActive: false,
            ),
            ButtomNavBar(
              imageUrl: 'assets/setting_icon_normal.png',
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

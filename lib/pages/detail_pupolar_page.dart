part of 'pages.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    launchUrl(String url) async{
      if(await canLaunch(url)){
        launch(url);
      }else{
        throw(url);
      }
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.asset(
              'assets/city_detail1.png',
              width: MediaQuery.of(context).size.width,
              height: 450,
              fit: BoxFit.cover,
            ),
            
            ListView(
              children: [
                SizedBox(
                  height: 380,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: blackColor,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Bali, Indonesia',
                                  style: yellowTextStyle.copyWith(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  height: 75,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadiusDirectional
                                                    .circular(12),
                                            color: whiteColor),
                                        child: Center(
                                          child: Image.asset(
                                            'assets/star_icon.png',
                                            width: 20,
                                            height: 20,
                                            color: yellowColor,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '4.92',
                                        style: whiteTextStyle,
                                      ),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadiusDirectional
                                                    .circular(12),
                                            color: whiteColor),
                                        child: Center(
                                          child: Image.asset(
                                            'assets/cloud_icon.png',
                                            width: 20,
                                            height: 20,
                                            color: yellowColor,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '27°C',
                                        style: whiteTextStyle,
                                      ),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadiusDirectional
                                                    .circular(12),
                                            color: whiteColor),
                                        child: Center(
                                          child: Image.asset(
                                            'assets/plane_icon.png',
                                            width: 20,
                                            height: 20,
                                            color: yellowColor,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '10 Apr',
                                        style: whiteTextStyle,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'Description',
                                  style: whiteTextStyle.copyWith(fontSize: 18),
                                ),
                                Container(
                                  // margin: EdgeInsets.symmetric(horizontal: 20),
                                  child: Text(
                                    'Bali is famous for beaches, countless waves for\nsurfing scuba diving, natiral sites to visit and\nexplore tremely fascinating Hindus culture with\ncolorfuls ceremonies and magnificent temples\ngifted artists the producing.',
                                    style: whiteTextStyle,
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 100,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        'Stating From',
                                        style: whiteTextStyle,
                                      ),
                                      Text(
                                        '\$500 - 800',
                                        style: yellowTextStyle.copyWith(
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  ElevatedButton(
                                    onPressed: () {
                                      launchUrl('tel:6285176458888');
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: yellowColor,
                                      minimumSize: Size(150, 50),
                                      shape: StadiumBorder(),
                                    ),
                                    child: Text('Book Now', style: whiteTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/btn_back.png',
                      width: 40,
                    ),
                  ),
                  Image.asset(
                    'assets/btn_wishlist.png',
                    width: 40,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      
    );
  }
}

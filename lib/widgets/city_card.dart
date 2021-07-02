part of 'widgets.dart';

class CityCard extends StatelessWidget {
  final City city;

  CityCard(this.city);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(),
          ),
        );
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: Container(
          height: 170,
          width: 120,
          color: yellowColor,
          child: Column(
            children: [
              Image.asset(
                city.imageUrl,
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                city.name,
                style: blackTextStyle.copyWith(
                    fontSize: 16, fontWeight: FontWeight.w700),
              )
            ],
          ),
        ),
      ),
    );
  }
}

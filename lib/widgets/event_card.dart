part of 'widgets.dart';

class EventCard extends StatelessWidget {
final Event event;

EventCard(this.event);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Row(
              children: [
                Image.asset(
                  event.imageUrl,
                  width: 230,
                  height: 230,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30, top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  event.name,
                  style: whiteTextStyle.copyWith(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Text(
                  event.city,
                  style: whiteTextStyle.copyWith(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Image.asset('assets/location_icon.png', width: 15, height: 20,),
                    SizedBox(width: 10,),
                    Text(event.country, style: whiteTextStyle.copyWith(fontSize: 15, fontWeight: FontWeight.bold),)
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

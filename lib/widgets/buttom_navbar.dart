part of 'widgets.dart';

class ButtomNavBar extends StatelessWidget {
final String imageUrl;
final bool isActive;

ButtomNavBar({this.imageUrl, this.isActive});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(
          imageUrl,
          width: 20,
          height: 20,
        ),
        Spacer(),
        isActive ? Container(
          width: 5,
          height: 5,
          decoration: BoxDecoration(
            color: yellowColor,
            borderRadius: BorderRadius.circular(5)
          ),
        ) : Container(),
        Spacer()
      ],
    );
  }
}

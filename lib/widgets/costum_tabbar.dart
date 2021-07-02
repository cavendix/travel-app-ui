part of 'widgets.dart';

class CustomTabbar extends StatelessWidget {
  final int selectedIndex;
  final List<String> titles;
  final Function(int) onTap;

  CustomTabbar({this.selectedIndex, this.titles, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(top: 48),
            height: 1,
            color: whiteColor,
          ),
          Row(
            children: titles
                .map(
                  (e) => Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            if (onTap != null) {
                              onTap(titles.indexOf(e));
                            }
                          },
                          child: Text(
                            e,
                            style: (titles.indexOf(e) == selectedIndex)
                                ? yellowTextStyle.copyWith(
                                    fontWeight: FontWeight.w600, fontSize: 12)
                                : greyTextStyle,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 40,
                          height: 3,
                          // margin: EdgeInsets.only(top: 13),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1.5),
                              color: (titles.indexOf(e) == selectedIndex)
                                  ? yellowColor
                                  : Colors.transparent),
                        ),
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}

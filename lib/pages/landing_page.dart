import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget navItem({required String title, required int index}) {
      return InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: Color(0xff1d1e3c),
                fontWeight:
                    index == selectedIndex ? FontWeight.w500 : FontWeight.w300,
              ),
            ),
            Container(
              height: 2,
              width: 66,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: index == selectedIndex
                    ? Color(0xfffe998d)
                    : Colors.transparent,
              ),
            ),
            Text(
              'data',
              style: TextStyle(
                fontSize: 61,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'images/background.jpg',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 100,
              vertical: 30,
            ),
            child: Column(
              children: [
                // NOTE : NAVIGATION

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'images/bubble.png',
                      height: 40,
                      width: 72,
                    ),
                    Row(
                      children: [
                        navItem(
                          title: 'Guides',
                          index: 0,
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        navItem(
                          title: 'Pricing',
                          index: 1,
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        navItem(
                          title: 'Team',
                          index: 2,
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        navItem(
                          title: 'Stories',
                          index: 3,
                        ),
                      ],
                    ),
                    Image.asset(
                      'images/button_account.jpg',
                      height: 53,
                      width: 163,
                    ),
                  ],
                ),

                // NOTE : CONTENT

                SizedBox(
                  height: 76,
                ),
                Image.asset(
                  'images/bicycle2.jpg',
                  width: 550,
                ),

                // NOTE:FOOTER

                SizedBox(
                  height: 85,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.check_circle,
                      size: 24,
                      color: Color(0xfffe998d),
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Text(
                      'Scroll to Learn More',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    )
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

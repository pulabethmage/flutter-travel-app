import 'package:flutter/material.dart';
import 'package:travel_vlog_app/widgets/app_large_text.dart';
import 'package:travel_vlog_app/widgets/responsive_button.dart';

import '../widgets/app_text.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "image01.jpg",
    "image02.jpg",
    "image03.jpg",
  ];

  List titleTexts = [
    "Duis auctor",
    "Cras tincidunt",
    "Vestibulum",
  ];

  List subtitleTexts = [
    "Lorem ipsum dolor",
    "Duis gravida augue",
    "Suspendisse",
  ];

  List descTexts = [
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
    "Duis gravida augue posuere mauris efficitur, ac dignissim tellus rhoncus",
    "Suspendisse nec augue pharetra eros lobortis commodo nec a urna.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_,index){
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "img/"+images[index]
                  ),
                  fit: BoxFit.cover
                )
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 150,left: 20,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: titleTexts[index]),
                        AppText(text: subtitleTexts[index],size: 30,),
                        SizedBox(height: 20,),
                        Container(
                          width: 250,
                          child: AppText(
                            text: descTexts[index],
                            color: Colors.black54,
                            size: 14,
                          ),
                        ),
                        SizedBox(height: 50,),
                        ResponsiveButton()
                      ],
                    ),
                    Column(
                      children: List.generate(3, (indexDots) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 3),
                          width: 8,
                          height: index==indexDots?25:8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: index==indexDots?Colors.black54:Colors.black54.withOpacity(0.2)
                          ),
                        );
                      }),
                    )
                  ],
                ),
              ),
            );
      }),
    );
  }
}

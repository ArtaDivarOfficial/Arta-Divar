import 'package:divar/constants/colors.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});
  static const String id = '/details_screen';

  @override
  State<StatefulWidget> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  late PageController _pageController;
  int currentImage = 0;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: currentImage,
      viewportFraction: 0.9,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.more_vert_rounded),
                    Image.asset(
                      'assets/app_logo/app_logo2.png',
                      height: 60,
                    ),
                    const Icon(Icons.arrow_back_ios_new_rounded),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'خانه گروی ۳ طبق',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.location_on_sharp,
                        size: 16,
                      ),
                      SizedBox(width: 3),
                      Text(
                        'هرات، ۶۴ متره، صادق ۲۰',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 250,
                    child: PageView.builder(
                      physics: const BouncingScrollPhysics(),
                      clipBehavior: Clip.none,
                      itemCount: 5,
                      controller: _pageController,
                      itemBuilder: (context, index) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: const DecorationImage(
                              image: AssetImage('assets/images/home.jpg'),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(0, 5),
                                blurRadius: 6,
                                color: kBlackColor.withOpacity(0.3),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SizedBox(
                      height: 45,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        clipBehavior: Clip.none,
                        children: [
                          ...List.generate(
                            10,
                            (index) => Container(
                              width: 50,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(5),
                                ),
                                image: const DecorationImage(
                                  image: AssetImage('assets/images/home.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    offset: const Offset(0, 3),
                                    blurRadius: 6,
                                    color: kBlackColor.withOpacity(0.3),
                                  ),
                                ],
                                border: Border.all(
                                  width: 2,
                                  color: kLightSecondaryColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

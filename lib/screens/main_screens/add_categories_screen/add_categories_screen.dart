// import 'package:divar/constants/colors.dart';
// import 'package:flutter/material.dart';

// class AddCategoriesScreen extends StatelessWidget {
//   const AddCategoriesScreen({super.key});
//   static const String id = '/add_categories_screen';

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               Stack(
//                 clipBehavior: Clip.none,
//                 children: [
//                   Container(
//                     width: double.infinity,
//                     height: MediaQuery.of(context).size.height * 0.5,
//                     padding: const EdgeInsets.symmetric(vertical: 50),
//                     decoration: const BoxDecoration(
//                       color: Color.fromARGB(255, 255, 111, 0),
//                     ),
//                     child: Column(
//                       children: [
//                         Container(
//                           width: 60,
//                           height: 60,
//                           decoration: BoxDecoration(
//                             border: Border.all(color: kWhiteColor),
//                           ),
//                           child: const Center(
//                             child: Icon(
//                               Icons.home,
//                               size: 50,
//                               color: kWhiteColor,
//                             ),
//                           ),
//                         ),
//                         Text(
//                           'Welcome',
//                           style:
//                               Theme.of(context).textTheme.titleLarge!.copyWith(
//                                     fontSize: 35,
//                                     height: 2,
//                                     fontWeight: FontWeight.w600,
//                                     color: kWhiteColor,
//                                   ),
//                         ),
//                         Text(
//                           'Sign in to your account',
//                           style: Theme.of(context)
//                               .textTheme
//                               .titleSmall!
//                               .copyWith(color: kWhiteColor),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Positioned(
//                     left: 0,
//                     right: 0,
//                     bottom: 0,
//                     child: Container(
//                       width: MediaQuery.of(context).size.width,
//                       margin: const EdgeInsets.symmetric(horizontal: 20),
//                       decoration: const BoxDecoration(
//                         color: kWhiteColor,
//                         borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(20),
//                           topRight: Radius.circular(20),
//                         ),
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(
//                           horizontal: 20,
//                           vertical: 20,
//                         ),
//                         child: Column(
//                           children: [
//                             const Text('signin using'),
//                             const SizedBox(height: 20),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Container(
//                                   padding: const EdgeInsets.all(8),
//                                   margin: const EdgeInsets.only(right: 10),
//                                   decoration: BoxDecoration(
//                                     color: kGreyColor.withOpacity(0.2),
//                                     borderRadius: BorderRadius.circular(50),
//                                   ),
//                                   child: const Icon(
//                                     Icons.home,
//                                     size: 30,
//                                   ),
//                                 ),
//                                 Container(
//                                   padding: const EdgeInsets.all(8),
//                                   margin: const EdgeInsets.only(right: 10),
//                                   decoration: BoxDecoration(
//                                     color: kGreyColor.withOpacity(0.2),
//                                     borderRadius: BorderRadius.circular(50),
//                                   ),
//                                   child: const Icon(
//                                     Icons.ac_unit_outlined,
//                                     size: 30,
//                                   ),
//                                 ),
//                                 Container(
//                                   padding: const EdgeInsets.all(8),
//                                   decoration: BoxDecoration(
//                                     color: kGreyColor.withOpacity(0.2),
//                                     borderRadius: BorderRadius.circular(50),
//                                   ),
//                                   child: const Icon(
//                                     Icons.access_time_filled_outlined,
//                                     size: 30,
//                                   ),
//                                 )
//                               ],
//                             ),
//                             const SizedBox(height: 40),
//                             Row(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Expanded(
//                                   child: Container(
//                                     margin: const EdgeInsets.only(left: 10),
//                                     decoration: BoxDecoration(
//                                       border: Border.all(
//                                         width: 0.5,
//                                         color: kGreyColor.withOpacity(0.2),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 Text(
//                                   'or',
//                                   style: Theme.of(context)
//                                       .textTheme
//                                       .bodyLarge!
//                                       .copyWith(
//                                         fontSize: 18,
//                                         color: kGreyColor.withOpacity(0.2),
//                                       ),
//                                 ),
//                                 Expanded(
//                                   child: Container(
//                                     margin: const EdgeInsets.only(right: 10),
//                                     decoration: BoxDecoration(
//                                       border: Border.all(
//                                         width: 0.5,
//                                         color: kGreyColor.withOpacity(0.2),
//                                       ),
//                                     ),
//                                   ),
//                                 )
//                               ],
//                             ),
//                             const SizedBox(height: 30),
//                             const Text('Email'),
//                             const SizedBox(height: 15),
//                             TextField(
//                               onTap: () {
//                                 print('object');
//                               },
//                               decoration: InputDecoration(
//                                 border: const OutlineInputBorder(),
//                                 enabledBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                     color: Color.fromARGB(255, 255, 111, 0),
//                                   ),
//                                 ),
//                                 focusedBorder: OutlineInputBorder(),
//                                 disabledBorder: OutlineInputBorder(),
//                                 hintText: 'Example@gmail.com',
//                               ),
//                             ),
//                             const Text('Password'),
//                             const SizedBox(height: 15),
//                             TextField(
//                               onTap: () {
//                                 print('object');
//                               },
//                               decoration: InputDecoration(
//                                 border: const OutlineInputBorder(),
//                                 enabledBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                     color: Color.fromARGB(255, 255, 111, 0),
//                                   ),
//                                 ),
//                                 focusedBorder: OutlineInputBorder(),
//                                 disabledBorder: OutlineInputBorder(),
//                                 hintText: 'Example@gmail.com',
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:divar/constants/colors.dart';
import 'package:divar/constants/list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddCategoriesScreen extends StatelessWidget {
  const AddCategoriesScreen({super.key});
  static const String id = '/add_categories_screen';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'دسته بندی ها',
          ),
          elevation: 1,
          backgroundColor: kWhiteColor,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 0,
                  padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
                  children: List.generate(
                    6,
                    (index) => CategoryItemWidget(
                      title: 'املاک',
                      subTitle: 'لوازم خانه/ لوازم آشپزخانه/ دیکوریشن/ بیشتر',
                      imagePath: 'assets/icons/home_property.svg',
                      index: index,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget({
    super.key,
    required this.title,
    required this.subTitle,
    required this.imagePath,
    required this.index,
  });
  final String title;
  final String subTitle;
  final String imagePath;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 170,
            // height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: kWhiteColor,
              boxShadow: [
                BoxShadow(
                  blurRadius: 5,
                  offset: const Offset(0, 1),
                  color: kLightSecondaryColor.withOpacity(0.3),
                ),
              ],
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      categoriesSvgList[index]['category_title'],
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: kLightPrimaryColor,
                          ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      subTitle,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            overflow: TextOverflow.ellipsis,
                            color: kLightPrimaryColor,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: -25,
            left: 25,
            child: Container(
              width: 55,
              height: 55,
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: kWhiteColor,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 1),
                    color: kLightSecondaryColor.withOpacity(0.3),
                    blurRadius: 5,
                  ),
                ],
              ),
              child: SvgPicture.asset(
                categoriesSvgList[index]['icon'],
                color: kLightPrimaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

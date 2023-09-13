import 'package:divar/constants/colors.dart';
import 'package:divar/screens/main_screens/home_screen/home_screen.dart';
import 'package:divar/sidebar_menu.dart';
import 'package:flutter/material.dart';

class EntryPointScreen extends StatefulWidget {
  const EntryPointScreen({super.key});
  static const String id = '/entry_point';

  @override
  State<EntryPointScreen> createState() => _EntryPointScreenState();
}

class _EntryPointScreenState extends State<EntryPointScreen>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> animation;
  late Animation<double> scaleAnimation;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    )..addListener(() {
        setState(() {});
      });
    animation = Tween<double>(begin: 1, end: 0).animate(
      CurvedAnimation(
          parent: _animationController, curve: Curves.fastOutSlowIn),
    );
    scaleAnimation = Tween<double>(begin: 0.9, end: 1).animate(
      CurvedAnimation(
          parent: _animationController, curve: Curves.fastOutSlowIn),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  bool isMenuOpened = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red,
      body: Stack(
        children: [
          AnimatedPositioned(
            width: 295,
            height: MediaQuery.of(context).size.height,
            duration: const Duration(milliseconds: 900),
            curve: Curves.fastOutSlowIn,
            right: isMenuOpened ? 0 : -295,
            child: const SidebarMenu(),
          ),
          Transform.translate(
            offset: Offset(animation.value * -295, 0),
            child: Transform.scale(
              scale: scaleAnimation.value,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    if (isMenuOpened) {
                      if (isMenuOpened) {
                        _animationController.forward();
                      } else {
                        _animationController.reverse();
                      }
                      isMenuOpened = false;
                    }
                  });
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: const HomeScreen(),
                ),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 15, 15, 0),
              child: GestureDetector(
                onTap: () {
                  if (isMenuOpened) {
                    _animationController.forward();
                  } else {
                    _animationController.reverse();
                  }
                  setState(() {
                    isMenuOpened = !isMenuOpened;
                  });
                },
                child: Icon(
                  isMenuOpened ? Icons.close_rounded : Icons.menu_rounded,
                  color: kBlackColor,
                  size: 40,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

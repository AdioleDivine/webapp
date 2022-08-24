import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hero/assets.dart';
import 'package:hero/image_functions.dart';
import 'package:hero/responsive_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool? isScrolleddown;
  bool? isScrolledup;
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.transparent,
          backgroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
          ),
          actions: [
            Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Row(
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: isScrolleddown == true
                              ? Container(
                                  height: 40,
                                  width: 300,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      gradient: const LinearGradient(
                                        end: Alignment.centerRight,
                                        begin: Alignment.centerLeft,
                                        colors: [
                                          Color.fromRGBO(49, 151, 149, 1),
                                          Color.fromRGBO(49, 130, 206, 1),
                                        ],
                                      )),
                                  child: const Center(
                                    child: Text(
                                      "Kostenlos Registreren",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                )
                              : isScrolledup == true
                                  ? const SizedBox()
                                  : const SizedBox()),
                      const Text(
                        "login",
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                ))
          ],
        ),
        backgroundColor: const Color.fromRGBO(235, 244, 255, 1),
        body: Listener(
          onPointerSignal: (pointerSignal) {
            if (pointerSignal is PointerScrollEvent) {
              if (pointerSignal.scrollDelta.dy > 0) {
                setState(() {
                  isScrolleddown = true;
                });
              } else {
                setState(() {
                  isScrolledup = true;
                  isScrolleddown = false;
                });
              }
            }
          },
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    callPng(ImageAssets.banner,
                        fit: BoxFit.cover,
                        height: MediaQuery.of(context).size.height / 1.5,
                        width: MediaQuery.of(context).size.width),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 250),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 80),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 90),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Deine Job\nwebsite",
                                    style: TextStyle(
                                        letterSpacing: 1.2,
                                        fontSize: 40,
                                        fontWeight: FontWeight.w500,
                                        height: 1.6),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: isScrolleddown == true
                                        ? const SizedBox()
                                        : isScrolledup == true
                                            ? Container(
                                                height: 40,
                                                width: 300,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    gradient:
                                                        const LinearGradient(
                                                      end:
                                                          Alignment.centerRight,
                                                      begin:
                                                          Alignment.centerLeft,
                                                      colors: [
                                                        Color.fromRGBO(
                                                            49, 151, 149, 1),
                                                        Color.fromRGBO(
                                                            49, 130, 206, 1),
                                                      ],
                                                    )),
                                                child: const Center(
                                                  child: Text(
                                                    "Kostenlos Registreren",
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              )
                                            : Container(
                                                height: 40,
                                                width: 300,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    gradient:
                                                        const LinearGradient(
                                                      end:
                                                          Alignment.centerRight,
                                                      begin:
                                                          Alignment.centerLeft,
                                                      colors: [
                                                        Color.fromRGBO(
                                                            49, 151, 149, 1),
                                                        Color.fromRGBO(
                                                            49, 130, 206, 1),
                                                      ],
                                                    )),
                                                child: const Center(
                                                  child: Text(
                                                    "Kostenlos Registreren",
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 150,
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                  clipBehavior: Clip.hardEdge,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white),
                                  child: callSvg(SvgAssets.agreement,
                                      height: 340)),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Center(
                  child: Text(
                    "Drei einfache Schritte\nzu deinem neuen Job",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey[800]),
                  ),
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 190),
                      child: Align(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text(
                                "1. ",
                                style: TextStyle(
                                    fontSize: 120,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.grey),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 65, right: 30),
                                child: Text(
                                  "Erstellen dein Lebenslauf",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey),
                                ),
                              ),
                              callSvg(SvgAssets.profile,
                                  height: 300, width: 300),
                            ],
                          )),
                    ),
                    Positioned(
                      top: 107,
                      left: 225,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: callSvg(SvgAssets.arrow1,
                                height: 500, width: 500)),
                      ),
                    ),
                  ],
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 350, top: 120),
                      child: Align(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 30),
                                child: callSvg(SvgAssets.cardstack,
                                    height: 300, width: 300),
                              ),
                              const Text(
                                "2. ",
                                style: TextStyle(
                                    fontSize: 120,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.grey),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                  top: 65,
                                ),
                                child: Text(
                                  "Erstellen dein Lebenslauf",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey),
                                ),
                              ),
                            ],
                          )),
                    ),
                    Positioned(
                      top: 200,
                      left: 330,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: callSvg(SvgAssets.arrow2,
                                height: 500, width: 500)),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 300, top: 45),
                  child: Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "3. ",
                            style: TextStyle(
                                fontSize: 120,
                                fontWeight: FontWeight.w700,
                                color: Colors.grey),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 65, right: 30),
                            child: Text(
                              "Mit nur einem Klick\nbwerben",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey),
                            ),
                          ),
                          callSvg(SvgAssets.contract, height: 300, width: 300),
                        ],
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
      smallScreen: Scaffold(
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          height: 80,
          child: Center(
            child: Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  height: 40,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                        end: Alignment.centerRight,
                        begin: Alignment.centerLeft,
                        colors: [
                          Color.fromRGBO(49, 151, 149, 1),
                          Color.fromRGBO(49, 130, 206, 1),
                        ],
                      )),
                  child: const Center(
                    child: Text(
                      "Kostenlos Registreren",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )),
          ),
        ),
        appBar: AppBar(
          foregroundColor: Colors.transparent,
          backgroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
          ),
          actions: [
            Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Row(
                    children: [
                      const Text(
                        "login",
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                ))
          ],
        ),
        backgroundColor: const Color.fromRGBO(235, 244, 255, 1),
        body: Listener(
          onPointerSignal: (pointerSignal) {
            if (pointerSignal is PointerScrollEvent) {
              if (pointerSignal.scrollDelta.dy > 0) {
                setState(() {
                  isScrolleddown = true;
                });
              } else {
                setState(() {
                  isScrolledup = true;
                  isScrolleddown = false;
                });
              }
            }
          },
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    callPng(ImageAssets.banner,
                        fit: BoxFit.cover,
                        height: MediaQuery.of(context).size.height / 1.5,
                        width: MediaQuery.of(context).size.width),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 80),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Deine Job\nwebsite",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        letterSpacing: 0,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w600,
                                        height: 1.6),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                  clipBehavior: Clip.hardEdge,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white),
                                  child: callSvg(SvgAssets.agreement,
                                      height: 170)),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Center(
                  child: Text(
                    "Drei einfache Schritte\nzu deinem neuen Job",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey[800]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 170),
                            child: Text(
                              "1. ",
                              style: TextStyle(
                                  fontSize: 120,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.grey),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 30),
                                child: callSvg(SvgAssets.profile,
                                    height: 200, width: 200),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 5, right: 50),
                                child: Text(
                                  "Erstellen dein\nLebenslauf",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              "2. ",
                              style: TextStyle(
                                  fontSize: 120,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.grey),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 250, right: 50),
                                child: Text(
                                  "Erstellen dein\nLebenslauf",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 30),
                                child: callSvg(SvgAssets.offers,
                                    height: 200, width: 200),
                              ),
                            ],
                          ),
                        ],
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              "3. ",
                              style: TextStyle(
                                  fontSize: 120,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.grey),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 250, right: 50),
                                child: Text(
                                  "Erstellen dein\nLebenslauf",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 30),
                                child: callSvg(SvgAssets.deal,
                                    height: 200, width: 200),
                              ),
                            ],
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

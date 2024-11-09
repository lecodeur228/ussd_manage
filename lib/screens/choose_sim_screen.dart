import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ussd_manage/screens/home_screen.dart';
import 'package:ussd_manage/utils/screen_size.dart';
import 'package:ussd_manage/utils/text_size.dart';

class ChooseSimScreen extends StatefulWidget {
  const ChooseSimScreen({super.key});

  @override
  State<ChooseSimScreen> createState() => _ChooseSimScreenState();
}

class _ChooseSimScreenState extends State<ChooseSimScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: EdgeInsets.all(context.heightPercent(2)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Choose your operator",
              style: GoogleFonts.poppins(
                  fontSize: context.t0, fontWeight: FontWeight.w600),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        vertical: context.heightPercent(2)),
                    padding: EdgeInsets.all(context.heightPercent(1)),
                    width: context.widthPercent(40),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          "https://airtime-medias.monisnap.com/prod/operators/togocel-TG.png",
                        ),
                        const Text("TOGOCOM"),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        vertical: context.heightPercent(2)),
                    padding: EdgeInsets.all(context.heightPercent(1)),
                    width: context.widthPercent(40),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          "https://airtime-medias.monisnap.com/prod/operators/togocel-TG.png",
                        ),
                        const Text("TOGOCOM"),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    )));
  }
}

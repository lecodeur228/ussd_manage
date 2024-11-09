import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ussd_manage/screens/choose_sim_screen.dart';
import 'package:ussd_manage/utils/screen_size.dart';
import 'package:ussd_manage/utils/text_size.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(context.heightPercent(2)),
            height: context.heightPercent(80),
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: context.heightPercent(1)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const BackButton(
                      color: Colors.white,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Iconsax.user_cirlce_add,
                            color: Colors.white)),
                  ],
                ),
                SizedBox(
                  height: context.heightPercent(2),
                ),
                Container(
                  padding: EdgeInsets.all(context.heightPercent(2)),
                  width: double.infinity,
                  height: context.heightPercent(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white),
                  child: Row(
                    children: [
                      const Icon(
                        Iconsax.money,
                        color: Colors.black,
                        size: 30,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Solde: 25000",
                        style: GoogleFonts.poppins(fontSize: context.t2),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: context.heightPercent(2),
                ),
                Text(
                  "Options liste",
                  style: GoogleFonts.poppins(
                      fontSize: context.t3,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: context.heightPercent(2),
                ),
                itemOption(1, "Send money"),
                SizedBox(
                  height: context.heightPercent(2),
                ),
                itemOption(2, "Get money"),
                SizedBox(
                  height: context.heightPercent(2),
                ),
                itemOption(3, "Buy credit"),
                SizedBox(
                  height: context.heightPercent(2),
                ),
                itemOption(3, "Pay facture"),
                SizedBox(
                  height: context.heightPercent(2),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "See more",
                    style: GoogleFonts.poppins(color: Colors.white60),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: context.heightPercent(2),
          ),
          SizedBox(
            width: double.infinity,
            height: context.heightPercent(10),
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: context.heightPercent(2)),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black87,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {},
                child: Text(
                  "Send money",
                  style: GoogleFonts.poppins(fontSize: context.t1),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }

  Widget itemOption(int index, String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(12)),
          child: Center(
            child: Text(
              index.toString(),
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: context.t2,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Text(
          text,
          style: GoogleFonts.poppins(
              fontSize: context.t4,
              color: Colors.white70,
              fontWeight: FontWeight.bold),
        ),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(12)),
          child: const Center(
              child: Icon(
            Iconsax.play,
          )),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:safe_space/utilities/colors.dart';
import 'package:google_fonts/google_fonts.dart';

Drawer drawerContents(context) {
  return Drawer(
    backgroundColor:Colors.white,
    child: ListView(
      children: [
        SizedBox(
          height: 70,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.clear_outlined,
                      color: Colors.white,
                    )),
                const Spacer(),
                // CircleAvatar(
                //   foregroundImage: UserController.user?.photoURL != null &&
                //           UserController.user!.photoURL!.isNotEmpty
                //       ? NetworkImage(UserController.user!.photoURL!)
                //       : null,
                //   child: UserController.user?.photoURL == null ||
                //           UserController.user!.photoURL!.isEmpty
                //       ? Icon(Icons.person,
                //           size: 30)
                //       : null,
                // ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ListTile(
          leading: const Icon(
            Icons.person_3_outlined,
            color: Colors.white,
          ),
          title: Text(
            "Profile",
            style: GoogleFonts.montserrat(
              color: mainScreenTextColor,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        ListTile(
          leading: const Icon(
            Icons.favorite_border_outlined,
            color: Colors.white,
          ),
          title: Text(
            "Liked Songs",
            style: GoogleFonts.montserrat(
              color: mainScreenTextColor,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        ListTile(
          leading: const Icon(
            Icons.language,
            color: Colors.white,
          ),
          title: Text(
            "Language",
            style: GoogleFonts.montserrat(
              color: mainScreenTextColor,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        ListTile(
          leading: const Icon(
            Icons.chat,
            color: Colors.white,
          ),
          title: Text(
            "Contact Us",
            style: GoogleFonts.montserrat(
              color: mainScreenTextColor,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        ListTile(
          leading: const Icon(
            Icons.wb_incandescent,
            color: Colors.white,
          ),
          title: Text(
            "FAQs",
            style: GoogleFonts.montserrat(
              color: mainScreenTextColor,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        ListTile(
          leading: const Icon(
            Icons.settings,
            color: Colors.white,
          ),
          title: Text(
            "Settings",
            style: GoogleFonts.montserrat(
              color: mainScreenTextColor,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        ListTile(
          onTap: () async {
            // await UserController.signOut();
            Navigator.pushReplacementNamed(context, '/login');
          },
          leading: const Icon(
            Icons.logout,
            color: Colors.white,
          ),
          title: Text(
            "Logout",
            style: GoogleFonts.montserrat(
              color: mainScreenTextColor,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ],
    ),
  );
}

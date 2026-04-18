import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meds_cab/core/utils/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBack;

  const CustomAppBar({
    super.key,
    required this.title,
    this.showBack = true,
  });

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoNavigationBar(
        backgroundColor: pinkShade700, // ✅ add this
        middle: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: kWhite, // optional for contrast
          ),
        ),
        leading: showBack
            ? GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(CupertinoIcons.back, color: kWhite),
        )
            : null,
        border: const Border(),
      );
    }

    // ANDROID
    return AppBar(
      title: Text(title),
      centerTitle: false,
      elevation: 0,
      backgroundColor: kWhite, // white appbar
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: pinkShade700,
        statusBarIconBrightness: Brightness.dark,
      ),
      leading: showBack
          ? IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => Navigator.pop(context),
      )
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
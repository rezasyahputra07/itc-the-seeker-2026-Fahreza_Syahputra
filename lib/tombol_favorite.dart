import 'package:flutter/material.dart';

class TombolFavoritInteraktif extends StatefulWidget {
  const TombolFavoritInteraktif({super.key});

  @override
  State<TombolFavoritInteraktif> createState() =>
      _TombolFavoritInteraktifState();
}

class _TombolFavoritInteraktifState extends State<TombolFavoritInteraktif> {
  bool favorite = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        favorite ? Icons.star : Icons.star_border,
        color: favorite
            ? const Color.fromARGB(255, 249, 255, 82)
            : Colors.white,
        size: 28,
      ),
      onPressed: () {
        setState(() {
          favorite = !favorite;
        });
      },
    );
  }
}

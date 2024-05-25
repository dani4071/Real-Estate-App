import 'package:flutter/material.dart';

class profileMenu extends StatelessWidget {
  const profileMenu({
    super.key, required this.icon, required this.text, required this.onTap,
  });

  final IconData icon;
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(text),
      onTap: onTap,
    );
  }
}
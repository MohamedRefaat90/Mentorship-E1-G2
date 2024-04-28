import 'package:flutter/material.dart';

class ProfileListItem {
  final IconData icon;
  final String title;

  const ProfileListItem({
    required this.icon,
    required this.title,
  });
}

 const  profileItems =  [
   ProfileListItem(
    icon: Icons.favorite,
    title: 'Favorite',
  ),
   ProfileListItem(
    icon: Icons.settings,
    title: 'Settings',
  ),
   ProfileListItem(
    icon: Icons.info,
    title: 'About Us',
  ),
   ProfileListItem(
    icon: Icons.lock,
    title: 'Privacy',
  ),
];

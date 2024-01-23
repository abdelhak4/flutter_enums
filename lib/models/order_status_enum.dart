import 'package:flutter/material.dart';


enum OrderStatusEnum {
  processing(
      color: Colors.amber,
      title: 'Processing',
      subtitle: 'Your order is bieng processing',
      icon: Icons.hourglass_top_outlined),
  inTransit(
      color: Colors.blue,
      title: 'In Transit',
      subtitle: 'Your order is on it\'s way',
      icon: Icons.local_shipping_outlined),
  deleverd(
      color: Colors.green,
      title: 'Deleverd',
      subtitle: 'Thank you for shopping with us',
      icon: Icons.task_alt_outlined);

  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;

  const OrderStatusEnum(
      {required this.title,
      required this.subtitle,
      required this.icon,
      required this.color});
}

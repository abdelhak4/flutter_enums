// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:flutter_chat_app/models/my_order.dart';
import 'package:flutter_chat_app/models/order_status_enum.dart';
import 'package:flutter_chat_app/pages/order_status.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MyOrder order = MyOrder.order;

    MyOrder order =
        MyOrder.order.copyWith(orderEnum: OrderStatusEnum.inTransit);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(order.orderId),
          ),
          body: Column(
            children: [
              ...OrderStatusEnum.values.mapIndexed((i, e) =>
                  OrderStatusItemView(
                      color: e.color,
                      title: e.title,
                      subtitle: e.subtitle,
                      icon: e.icon,
                      showLine: i < OrderStatusEnum.values.length - 1,
                      isActive:
                          OrderStatusEnum.values.indexOf(order.orderEnum) >= i))
              // .toList()
            ],
          )),
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xff005c9a),
          brightness: Brightness.dark,
          surface: const Color(0xFF17202C),
          background: const Color(0xFF0E1215),
        ),
        useMaterial3: true,
      ),
    );
  }
}

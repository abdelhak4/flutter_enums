import 'package:flutter_chat_app/models/order_status_enum.dart';


class MyOrder {
  final String orderId;
  final OrderStatusEnum orderEnum;

  MyOrder({required this.orderId, required this.orderEnum});

  static MyOrder get order =>
      MyOrder(orderId: "ORDR#123", orderEnum: OrderStatusEnum.processing);

  MyOrder copyWith({
    String? orderId,
    OrderStatusEnum? orderEnum,
  }) {
    return MyOrder(
      orderId: orderId ?? this.orderId,
      orderEnum: orderEnum ?? this.orderEnum,
    );
  }
}

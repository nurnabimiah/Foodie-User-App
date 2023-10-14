



class OrderModel{
  String orderId;
  String orderDate;
  String deliveryOption;
  String payableAmount;
  String status;
  String address;

  OrderModel(
      this.orderId,
      this.orderDate,
      this.deliveryOption,
      this.payableAmount,
      this.status,
      this.address);
}

List<OrderModel> orderList = [
  OrderModel('#11185', '20-02-2023', 'Cash on Delivery', '\$500', 'Delivered','Road#12,House#52/1,Sekhertek,Adabor,Dhaka'),
  OrderModel('#11186', '20-02-2023', 'Cash on Delivery', '\$500', 'Confirmed', 'Road#12,House#52/1,Sekhertek,Adabor,Dhaka'),
  OrderModel('#11185', '20-02-2023', 'Cash on Delivery', '\$500', 'On the way', 'Road#12,House#52/1,Sekhertek,Adabor,Dhaka'),

];
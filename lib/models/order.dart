

class Order {
 late int id;
 late String orderType;
 late String discountCode;
 late String instruction;
 late String deliverAt;
 late String deliveryDate;
 late String address;
 late String lat;
 late String long;
 late String status;
 late String reason;
 late String refundAt;
 late String area;
 late String city;
 late TotalPrice? totalPrice;
  Order.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    orderType = json['orderType'];
    discountCode = json['discountCode'];
    instruction = json['instruction'];
    deliverAt = json['deliverAt'];
    deliveryDate = json['delivery_date'];
    address = json['address'];
    lat = json['lat'];
    long = json['long'];
    status = json['status'];
    reason = json['reason'];
    refundAt = json['refund_at'];
    area = json['area'];
    city = json['city'];
    totalPrice = json['total_price'] != null
        ? new TotalPrice.fromJson(json['total_price'])
        : null;
  }


}

class TotalPrice {
late  String number;
late  String type;

  TotalPrice.fromJson(Map<String, dynamic> json) {
    number = json['number'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['number'] = this.number;
    data['type'] = this.type;
    return data;
  }
}
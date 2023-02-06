import 'package:dw9_delivery_app/app/dto/order_product_dto.dart';
import 'package:dw9_delivery_app/app/models/address_model.dart';

class OrderDto {
  List<OrderProductDto> products;
  // String cep;
  // String neighborhoodAddress;
  // String address;
  // String numberAddress;
  // String? complementAddress;
  AddressModel address;
  String document;
  int paymentMethodId;

  OrderDto({
    required this.products,
    // required this.cep,
    // required this.neighborhoodAddress,
    required this.address,
    // required this.numberAddress,
    // this.complementAddress,
    required this.document,
    required this.paymentMethodId,
  });
}

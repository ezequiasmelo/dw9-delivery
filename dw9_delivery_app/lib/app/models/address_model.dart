import 'dart:convert';

class AddressModel {
  String cep;
  String neighborhoodAddress;
  String address;
  String numberAddress;
  String? complementAddress;

  AddressModel({
    required this.cep,
    required this.neighborhoodAddress,
    required this.address,
    required this.numberAddress,
    this.complementAddress,
  });

  Map<String, dynamic> toMap() {
    return {
      'cep': cep,
      'neighborhood_address': neighborhoodAddress,
      'address': address,
      'number_address': numberAddress,
      'complement_address': complementAddress,
    };
  }

  factory AddressModel.fromMap(Map<String, dynamic> map) {
    return AddressModel(
      cep: map['cep'] ?? '',
      neighborhoodAddress: map['bairro'] ?? '',
      address: map['logradouro'] ?? '',
      numberAddress: map['numberAddress'] ?? '',
      complementAddress: map['complemento'],
    );
  }

  String toJson() => json.encode(toMap());

  factory AddressModel.fromJson(String source) =>
      AddressModel.fromMap(json.decode(source));
}

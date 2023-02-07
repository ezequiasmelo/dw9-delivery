import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';

import '../../core/exceptions/repository_exception.dart';
import '../../core/rest_client/custom_dio.dart';
import '../../models/address_model.dart';
import 'cep_repository.dart';

class CepRepositoryImpl implements CepRepository {
  final CustomDio dio;

  CepRepositoryImpl({
    required this.dio,
  });

  @override
  Future<AddressModel> getCep(String cep) async {
    try {
      final result =
          await dio.unauth().get('https://viacep.com.br/ws/$cep/json/');
      if (json.encode(result.data).contains('erro')) {
        log('Erro ao buscar CEP');
        throw RepositoryException(message: 'Erro ao buscar CEP');
      }
      return AddressModel.fromMap(result.data);
    } on DioError catch (e, s) {
      log('Erro ao buscar CEP', error: e, stackTrace: s);
      throw RepositoryException(message: 'Erro ao buscar CEP');
    }
  }
}

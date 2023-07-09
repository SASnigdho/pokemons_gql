import 'package:dio/dio.dart';
import 'package:gql_dio_link/gql_dio_link.dart';
import 'package:gql_exec/gql_exec.dart';
import 'package:gql_link/gql_link.dart';

import '../../const/endpoints.dart';
import "package:gql/language.dart" as gql;

class ApiClient {
  final Dio _dio = Dio();

  Future<dynamic> get({required String query}) async {
    try {
      final Link link = DioLink(Endpoints.baseUrl, client: _dio);

      final response = await link
          .request(Request(
            operation: Operation(document: gql.parseString(query)),
          ))
          .first;

      return response;
    } on DioException {
      rethrow;
    }
  }
}

import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../../helpers/Constants.dart';

@RestApi(baseUrl: baseUrl, parser: Parser.MapSerializable)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _NewsApiService;

/*@GET('/top-headlines')
  Future<HttpResponse<BreakingNewsResponse>> getBreakingNewsArticles({
    @Query("apiKey") String? apiKey,
    @Query("sources") String? sources,
    @Query("page") int? page,
    @Query("pageSize") int? pageSize,
  });*/
}

class _NewsApiService implements ApiService {
  _NewsApiService(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://newsapi.org/v2';
  }

  final Dio _dio;

  String? baseUrl;

  /*@override
  Future<HttpResponse<BreakingNewsResponse>> getBreakingNewsArticles({
    apiKey,
    sources,
    page,
    pageSize,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'apiKey': apiKey,
      r'sources': sources,
      r'page': page,
      r'pageSize': pageSize,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<HttpResponse<BreakingNewsResponse>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/top-headlines',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = BreakingNewsResponse.fromMap(_result.data!);
    final httpResponse = HttpResponse(value, _result);
    return httpResponse;
  }*/

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}

import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../../utils/helpers/Constants.dart';

part 'ApiService.g.dart';

@RestApi(baseUrl: baseUrl, parser: Parser.MapSerializable)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

/*@GET('/top-headlines')
  Future<HttpResponse<BreakingNewsResponse>> getBreakingNewsArticles({
    @Query("apiKey") String? apiKey,
    @Query("sources") String? sources,
    @Query("page") int? page,
    @Query("pageSize") int? pageSize,
  });*/
}

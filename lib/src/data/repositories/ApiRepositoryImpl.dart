import '../../domain/repositories/ApiRepository.dart';
import '../dataSource/remote/ApiService.dart';
import 'base/BaseApiRepository.dart';

class ApiRepositoryImpl extends BaseApiRepository implements ApiRepository {
  final ApiService _apiService;

  ApiRepositoryImpl(this._apiService);

/*@override
  Future<DataState<BreakingNewsResponse>> getBreakingNewsArticles({
    required BreakingNewsRequest request,
  }) {
    return getStateOf<BreakingNewsResponse>(
      request: () => _apiService.getBreakingNewsArticles(
        apiKey: request.apiKey,
        sources: request.sources,
        page: request.page,
        pageSize: request.pageSize,
      ),
    );
  }*/
}

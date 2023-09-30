import 'package:dio/dio.dart';
import 'package:news_app_clean_arch/core/constant/constants.dart';
import 'package:news_app_clean_arch/features/daily_news/data/model/article.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/http.dart';

part 'news_api_service.g.dart';

@RestApi(baseUrl: newsBaseUrl)
abstract class NewsApiService {
  factory NewsApiService(Dio dio, {String baseUrl}) = _NewsApiService;

  @GET('/top-headlines')
  Future<HttpResponse<List<ArticleModel>>> getNewsArticles({
    @Query("apiKey") String? apiKey,
    @Query("country") String? country,
    @Query("category") String? category,
  });
}

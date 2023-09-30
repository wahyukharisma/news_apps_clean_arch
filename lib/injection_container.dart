import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:news_app_clean_arch/features/daily_news/data/data_sources/remote/news_api_service.dart';
import 'package:news_app_clean_arch/features/daily_news/data/repository/article_repository_impl.dart';
import 'package:news_app_clean_arch/features/daily_news/domain/repository/article_repository.dart';
import 'package:news_app_clean_arch/features/daily_news/domain/usecase/get_article.dart';
import 'package:news_app_clean_arch/features/daily_news/presentation/bloc/article/remote/remote_article_bloc.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  //dio
  sl.registerSingleton<Dio>(Dio());
  // dependencies
  sl.registerSingleton<NewsApiService>(NewsApiService(sl()));
  // repository
  sl.registerSingleton<ArticleRepository>(
    ArticleRepositoryImpl(sl()),
  );
  //use case
  sl.registerSingleton<GetArticleUseCase>(
    GetArticleUseCase(sl()),
  );

  //Blocs
  sl.registerFactory<RemoteArticlesBloc>(
    () => RemoteArticlesBloc(sl()),
  );
}

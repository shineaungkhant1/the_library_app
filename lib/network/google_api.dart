import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:the_library_app/network/api_constants.dart';
import 'responses/get_google_books_response.dart';
part 'google_api.g.dart';

@RestApi(baseUrl: GOOGLE_BASE_URL)
abstract class GoogleApi{

  factory GoogleApi(Dio dio) = _GoogleApi;

  @GET(ENDPOINT_GET_VOLUMES)
  Future<GetGoogleBooksResponse> getGoogleBooksList(
      @Query(PARAM_Q) String q
      );

}

import '../datasource/remote/dio/dio_client.dart';
import '../datasource/remote/exception/api_error_handler.dart';


// class TransactionInfoRepo {
//   final DioClient dioClient;
//   final SharedPreferences sharedPreferences;
//
//   TransactionInfoRepo({required this.dioClient, required this.sharedPreferences});
//
//
//   Future<ApiResponse> getTransactionInfo() async {
//     try {
//       Response response = await dioClient.get(
//         AppConstants.transactionInfoUri,
//         options: Options(headers: {
//           "Content-Type": "application/json",
//           "Authorization":
//           "Bearer ${ sharedPreferences.getString(AppConstants.TOKEN) ?? ""}",
//         }),
//       );
//       return ApiResponse.withSuccess(response);
//     } catch (e) {
//       return ApiResponse.withError(ApiErrorHandler.getMessage(e));
//     }
//   }
// }
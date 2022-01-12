import 'package:flutter/material.dart';
import 'package:testing/src/services/RestClient.dart';
import 'package:testing/src/services/api_helper.dart';
import 'package:testing/src/services/test_service.dart';

/// Displays detailed information about a SampleItem.
class SampleItemDetailsView extends StatefulWidget {
  final ApiHelper _apiHelper = ApiHelper();
  static const routeName = '/sample_item';

  @override
  State<SampleItemDetailsView> createState() => _SampleItemDetailsViewState();
}

class _SampleItemDetailsViewState extends State<SampleItemDetailsView> {
  late RestClient responseFromApi;
  final TestService _testService = TestService();

  @override
  void initState() {
    super.initState();
    //responseFromApi = RestClient(Dio(BaseOptions(contentType: '/v1/home')));
  }

  @override
  Widget build(BuildContext context) {
    _testService.testFuture();
    return Scaffold(
        appBar: AppBar(
          title: const Text('Item Details'),
        ),
        body: Container());
  }
}

// FutureBuilder(
// future: responseFromApi.test(),
// builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
// if (snapshot.connectionState == ConnectionState.done) {
// if (snapshot.hasData) {
// final BaseResponse post = snapshot.data;
// return Center(
// child: Text(post.data + post.message + post.status),
// );
// } else {
// return const Center(
// child: Text('wrong'),
// );
// }
// } else {
// return const Center(
// child: CircularProgressIndicator(),
// );
// }
// },
// ),
//https://47b7e274-7abb-45bd-8a25-491c2a4e9d7d.mock.pstmn.io

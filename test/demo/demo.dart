import 'package:umiuni2d_httprequest/request.dart';
import 'package:umiuni2d_httprequest/request_io.dart';
import 'dart:convert';
main(List<String> args) async {
    print("hello ${args}");
    IONetBuilder builder = new IONetBuilder();
    Requester requester = await builder.createRequester();
    Response response = await requester.request("GET", "http://www.google.com");
    print("status :: ${response.status}");
    print("headers :: ${response.headers}");
    print("body :: ${utf8.decode(response.response.asUint8List(),allowMalformed: true)}");
}

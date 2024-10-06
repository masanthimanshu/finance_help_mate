import 'package:finance_help_mate/network/endpoints.dart';
import 'package:finance_help_mate/network/requests.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class AuthController with HTTPRequests {
  final _hive = Hive.box("myBox");

  Future<String?> sendOtp(Map<String, dynamic> data) async {
    final res = await postRequest(
      url: apiEndpoint(ApiEndpoints.sendOtp),
      payload: data,
    );

    if (res != null) return res["verId"];
    return null;
  }

  Future<String?> verifyOtp(Map<String, dynamic> data) async {
    final res = await postRequest(
      url: apiEndpoint(ApiEndpoints.verifyOtp),
      payload: data,
    );

    if (res != null) {
      _hive.put("authToken", res["authToken"]);
      _hive.put("refreshToken", res["refreshToken"]);
      return res["type"];
    }

    return null;
  }

  void logout(BuildContext context) {
    _hive.delete("authToken");
    _hive.delete("refreshToken");

    Navigator.pushNamedAndRemoveUntil(context, "/auth", (_) => false);
  }
}

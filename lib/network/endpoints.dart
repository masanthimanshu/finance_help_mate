enum ApiEndpoints {
  addChat,
  baseUrl,
  getChat,
  sendOtp,
  limitChat,
  verifyOtp,
  verifyToken,
  refreshToken,
}

String apiEndpoint(ApiEndpoints endpoint) {
  switch (endpoint) {
    case ApiEndpoints.addChat:
      return "secure/chat/add-chat";

    case ApiEndpoints.baseUrl:
      return "https://backend.scoobies.ai/finance/";

    case ApiEndpoints.getChat:
      return "secure/chat/get-chat";

    case ApiEndpoints.sendOtp:
      return "account/auth/phone";

    case ApiEndpoints.limitChat:
      return "secure/chat/limit-chat?limit=6";

    case ApiEndpoints.verifyOtp:
      return "account/auth/verify-phone";

    case ApiEndpoints.verifyToken:
      return "secure/verify";

    case ApiEndpoints.refreshToken:
      return "jwt/refresh";
  }
}

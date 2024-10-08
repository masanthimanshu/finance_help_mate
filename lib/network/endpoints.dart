enum ApiEndpoints {
  addChat,
  baseUrl,
  getChat,
  sendOtp,
  verifyOtp,
  deleteChat,
  totalAmount,
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

    case ApiEndpoints.verifyOtp:
      return "account/auth/verify-phone";

    case ApiEndpoints.deleteChat:
      return "secure/chat/delete-chat?chatId=";

    case ApiEndpoints.totalAmount:
      return "secure/chat/total-amount";

    case ApiEndpoints.verifyToken:
      return "secure/verify";

    case ApiEndpoints.refreshToken:
      return "jwt/refresh";
  }
}

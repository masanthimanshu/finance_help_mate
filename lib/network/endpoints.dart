enum ApiEndpoints { baseUrl, refreshToken }

String apiEndpoint(ApiEndpoints endpoint) {
  switch (endpoint) {
    case ApiEndpoints.baseUrl:
      return "https://backend.scoobies.ai/finance/";

    case ApiEndpoints.refreshToken:
      return "jwt/refresh";
  }
}

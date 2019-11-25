struct TokenAuthenticator<UserIDType> where UserIDType: Codable {

    func validateRefreshToken(_ refreshToken: RefreshToken<UserIDType>, clientID: String) -> Bool {
        guard refreshToken.clientID  == clientID else {
            return false
        }

        return true
    }

    func validateAccessToken(_ accessToken: AccessToken<UserIDType>, requiredScopes: [String]?) -> Bool {
        guard let scopes = requiredScopes else {
            return true
        }

        guard let accessTokenScopes = accessToken.scopes else {
            return false
        }

        for scope in scopes {
            if !accessTokenScopes.contains(scope) {
                return false
            }
        }

        return true
    }
}

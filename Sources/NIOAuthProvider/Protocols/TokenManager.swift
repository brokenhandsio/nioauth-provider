public protocol TokenManager {
    associatedtype UserIDType
    func generateAccessRefreshTokens(clientID: String, userID: UserIDType?, scopes: [String]?,
                                     accessTokenExpiryTime: Int) throws -> (AccessToken, RefreshToken)
    func generateAccessToken(clientID: String, userID: UserIDType?, scopes: [String]?,
                             expiryTime: Int) throws -> AccessToken
    func getRefreshToken(_ refreshToken: String) -> RefreshToken?
    func getAccessToken(_ accessToken: String) -> AccessToken?
    func updateRefreshToken(_ refreshToken: RefreshToken, scopes: [String])
}

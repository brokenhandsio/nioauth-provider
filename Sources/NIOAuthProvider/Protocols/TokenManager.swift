public protocol TokenManager {
    associatedtype UserIDType: Codable
    func generateAccessRefreshTokens(clientID: String, userID: UserIDType?, scopes: [String]?,
                                     accessTokenExpiryTime: Int) throws -> (AccessToken<UserIDType>, RefreshToken<UserIDType>)
    func generateAccessToken(clientID: String, userID: UserIDType?, scopes: [String]?,
                             expiryTime: Int) throws -> AccessToken<UserIDType>
    func getRefreshToken(_ refreshToken: String) -> RefreshToken<UserIDType>?
    func getAccessToken(_ accessToken: String) -> AccessToken<UserIDType>?
    func updateRefreshToken(_ refreshToken: RefreshToken<UserIDType>, scopes: [String])
}

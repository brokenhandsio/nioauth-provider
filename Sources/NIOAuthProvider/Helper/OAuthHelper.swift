protocol OAuthHelper {
    associatedtype UserIDType: Codable
    func assertScopes(_ scopes: [String]?) throws
    func user() throws -> OAuthUser<UserIDType>
}

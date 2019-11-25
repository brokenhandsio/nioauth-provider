protocol OAuthHelper {
    associatedtype UserIDType
    func assertScopes(_ scopes: [String]?) throws
    func user() throws -> OAuthUser<UserIDType>
}

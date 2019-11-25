public final class RefreshToken<UserIDType>: Codable where UserIDType: Codable {
    public let tokenString: String
    public let clientID: String
    public let userID: UserIDType?
    public var scopes: [String]?

    public init(tokenString: String, clientID: String, userID: UserIDType?, scopes: [String]? = nil) {
        self.tokenString = tokenString
        self.clientID = clientID
        self.userID = userID
        self.scopes = scopes
    }
}

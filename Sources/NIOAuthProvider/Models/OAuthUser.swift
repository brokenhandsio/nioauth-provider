public final class OAuthUser<UserIDType>: Codable where UserIDType: Codable {
    public let username: String
    public let emailAddress: String?
    public var password: String
    public var userID: UserIDType?

    public init(userID: UserIDType? = nil, username: String, emailAddress: String?, password: String) {
        self.username = username
        self.emailAddress = emailAddress
        self.password = password
        self.userID = userID
    }
}

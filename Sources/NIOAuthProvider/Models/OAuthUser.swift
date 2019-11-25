public final class OAuthUser<T> {
    public let username: String
    public let emailAddress: String?
    public var password: String
    public var userID: T?

    public var extend: [String: Any] = [:]

    public init(userID: T? = nil, username: String, emailAddress: String?, password: String) {
        self.username = username
        self.emailAddress = emailAddress
        self.password = password
        self.userID = userID
    }
}

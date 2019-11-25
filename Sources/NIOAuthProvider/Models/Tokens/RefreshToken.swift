import Foundation

public final class RefreshToken {
    public let tokenString: String
    public let clientID: String
    public let userID: UUID? // TODO
    public var scopes: [String]?

    public var extend: [String: Any] = [:]

    public init(tokenString: String, clientID: String, userID: UUID?, scopes: [String]? = nil) {
        self.tokenString = tokenString
        self.clientID = clientID
        self.userID = userID
        self.scopes = scopes
    }
}

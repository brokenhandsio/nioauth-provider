import Foundation

public final class AccessToken {
    public let tokenString: String
    public let clientID: String
    public let userID: UUID? // TODO
    public let scopes: [String]?
    public let expiryTime: Date

    public var extend: [String: Any] = [:]

    public init(tokenString: String, clientID: String, userID: UUID?, scopes: [String]? = nil, expiryTime: Date) {
        self.tokenString = tokenString
        self.clientID = clientID
        self.userID = userID
        self.scopes = scopes
        self.expiryTime = expiryTime
    }
}

import Foundation

public final class AccessToken<UserIDType>: Codable where UserIDType: Codable {
    public let tokenString: String
    public let clientID: String
    public let userID: UserIDType?
    public let scopes: [String]?
    public let expiryTime: Date

    public init(tokenString: String, clientID: String, userID: UserIDType?, scopes: [String]? = nil, expiryTime: Date) {
        self.tokenString = tokenString
        self.clientID = clientID
        self.userID = userID
        self.scopes = scopes
        self.expiryTime = expiryTime
    }
}

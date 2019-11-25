import Foundation

public final class OAuthCode<UserIDType>: Codable where UserIDType: Codable {
    public let codeID: String
    public let clientID: String
    public let redirectURI: String
    public let userID: UserIDType
    public let expiryDate: Date
    public let scopes: [String]?

    public init(codeID: String, clientID: String, redirectURI: String, userID: UserIDType, expiryDate: Date, scopes: [String]?) {
        self.codeID = codeID
        self.clientID = clientID
        self.redirectURI = redirectURI
        self.userID = userID
        self.expiryDate = expiryDate
        self.scopes = scopes
    }
}

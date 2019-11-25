import Foundation

public struct EmptyCodeManager: CodeManager {
    
    public typealias UserIDType = UUID
    
    public init() {}

    public func getCode(_ code: String) -> OAuthCode? {
        return nil
    }

    public func generateCode(userID: UserIDType, clientID: String, redirectURI: String, scopes: [String]?) throws -> String {
        return ""
    }

    public func codeUsed(_ code: OAuthCode) {}
}

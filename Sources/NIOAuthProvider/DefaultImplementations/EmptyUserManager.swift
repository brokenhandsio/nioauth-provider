import Foundation

public struct EmptyUserManager: UserManager {
    public typealias IDType = UUID
    

    public init() {}

    public func getUser(userID: IDType) -> OAuthUser<IDType>? {
        return nil
    }

    public func authenticateUser(username: String, password: String) -> IDType? {
        return nil
    }
}

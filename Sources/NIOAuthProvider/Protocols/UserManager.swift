public protocol UserManager {
    associatedtype IDType: Codable
    func authenticateUser(username: String, password: String) -> IDType?
    func getUser(userID: IDType) -> OAuthUser<IDType>?
}

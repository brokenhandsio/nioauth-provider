//import Foundation
//import NIO
//
//public protocol AuthorizeHandler {
//    func handleAuthorizationRequest(_ request: HTTPRequest,
//                                    authorizationRequestObject: AuthorizationRequestObject) throws -> HTTPResponse
//    func handleAuthorizationError(_ errorType: AuthorizationError) throws -> HTTPResponse
//}
//
//public enum AuthorizationError: Error {
//    case invalidClientID
//    case confidentialClientTokenGrant
//    case invalidRedirectURI
//    case httpRedirectURI
//}
//
//public struct AuthorizationRequestObject {
//    public let responseType: String
//    public let clientID: String
//    public let redirectURI: URL
//    public let scope: [String]
//    public let state: String?
//    public let csrfToken: String
//}

//import NIOAuthProvider
//import Foundation
//import Node
//
//class StubTokenManager: TokenManager {
//
//    var accessToken = "ABCDEF"
//    var refreshToken = "GHIJKL"
//    
//    func generateAccessRefreshTokens(clientID: String, userID: Identifier?, scopes: [String]?, accessTokenExpiryTime: Int) throws -> (AccessToken, RefreshToken) {
//        let access = AccessToken(tokenString: accessToken, clientID: clientID, userID: userID, scopes: scopes, expiryTime: Date())
//        let refresh = RefreshToken(tokenString: refreshToken, clientID: clientID, userID: nil, scopes: scopes)
//        return (access, refresh)
//    }
//    
//    func generateAccessToken(clientID: String, userID: Identifier?, scopes: [String]?, expiryTime: Int) throws -> AccessToken {
//        return AccessToken(tokenString: accessToken, clientID: clientID, userID: userID, scopes: scopes, expiryTime: Date())
//    }
//    
//    func getRefreshToken(_ refreshToken: String) -> RefreshToken? {
//        return nil
//    }
//    
//    func getAccessToken(_ accessToken: String) -> AccessToken? {
//        return nil
//    }
//    
//    func updateRefreshToken(_ refreshToken: RefreshToken, scopes: [String]) {
//    }
//}

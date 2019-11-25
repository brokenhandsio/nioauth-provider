//import NIOAuthProvider
//import Vapor
//import Cookies
//import Sessions
//import Node
//
//class TestDataBuilder
//{
//    static func getOAuthDroplet(codeManager: CodeManager = EmptyCodeManager(), tokenManager: TokenManager = StubTokenManager(), clientRetriever: ClientRetriever = FakeClientGetter(), userManager: UserManager = EmptyUserManager(), authorizeHandler: AuthorizeHandler = EmptyAuthorizationHandler(), validScopes: [String]? = nil, resourceServerRetriever: ResourceServerRetriever = EmptyResourceServerRetriever(), environment: Environment? = nil, log: CapturingLogger? = nil, sessions: FakeSessions? = nil) throws -> Droplet {
//        var config = Config([:])
//        
//        if let environment = environment {
//            config.environment = environment
//        }
//        
//        if let log = log {
//            config.addConfigurable(log: { (_) -> (CapturingLogger) in
//                return log
//            }, name: "capturing-log")
//            try config.set("droplet.log", "capturing-log")
//        }
//        
//        let provider = NIOAuthProvider.Provider(codeManager: codeManager, tokenManager: tokenManager, clientRetriever: clientRetriever, authorizeHandler: authorizeHandler, userManager: userManager, validScopes: validScopes, resourceServerRetriever: resourceServerRetriever)
//        
//        try config.addProvider(provider)
//        
//        config.addConfigurable(middleware: SessionsMiddleware.init, name: "sessions")
//        try config.set("droplet.middleware", ["error", "sessions"])
//        
//        if let sessions = sessions {
//            config.addConfigurable(sessions: { (_) -> (FakeSessions) in
//                return sessions
//            }, name: "fake")
//            try config.set("droplet.sessions", "fake")
//        }
//        
//        return try Droplet(config)
//    }
//    
//    static func getTokenRequestResponse(with drop: Droplet, grantType: String?, clientID: String?, clientSecret: String?, redirectURI: String? = nil, code: String? = nil, scope: String? = nil, username: String? = nil, password: String? = nil, refreshToken: String? = nil) throws -> Response {
//        let request = Request(method: .post, uri: "/oauth/token/")
//        
//        var requestData = Node([:], in: nil)
//        
//        if let grantType = grantType {
//            try requestData.set("grant_type", grantType)
//        }
//
//        if let clientID = clientID {
//            try requestData.set("client_id", clientID)
//        }
//        
//        if let clientSecret = clientSecret {
//            try requestData.set("client_secret", clientSecret)
//        }
//        
//        if let redirectURI = redirectURI {
//            try requestData.set("redirect_uri", redirectURI)
//        }
//        
//        if let code = code {
//            try requestData.set("code", code)
//        }
//
//        if let scope = scope {
//            try requestData.set("scope", scope)
//        }
//        
//        if let username = username {
//            try requestData.set("username", username)
//        }
//        
//        if let password = password {
//            try requestData.set("password", password)
//        }
//        
//        if let refreshToken = refreshToken {
//            try requestData.set("refresh_token", refreshToken)
//        }
//        
//        request.formURLEncoded = requestData
//        
//        let response = try drop.respond(to: request)
//        
//        return response
//    }
//    
//    static func getAuthRequestResponse(with drop: Droplet, responseType: String?, clientID: String?, redirectURI: String?, scope: String?, state: String?) throws -> Response {
//    
//        var queries: [String] = []
//        
//        if let responseType = responseType {
//            queries.append("response_type=\(responseType)")
//        }
//        
//        if let clientID = clientID {
//            queries.append("client_id=\(clientID)")
//        }
//        
//        if let redirectURI = redirectURI {
//            queries.append("redirect_uri=\(redirectURI)")
//        }
//        
//        if let scope = scope {
//            queries.append("scope=\(scope)")
//        }
//        
//        if let state = state {
//            queries.append("state=\(state)")
//        }
//        
//        let requestQuery = queries.joined(separator: "&")
//        
//        let authRequest = Request(method: .get, uri: "/oauth/authorize?\(requestQuery)")
//        return try drop.respond(to: authRequest)
//    }
//    
//    static func getAuthResponseResponse(with drop: Droplet, approve: Bool?, clientID: String?, redirectURI: String?, responseType: String?, scope: String?, state: String?, user: OAuthUser?, csrfToken: String?, sessionCookie: Cookie? = nil, sessionID: String? = nil) throws -> Response {
//        var queries: [String] = []
//        
//        if let clientID = clientID {
//            queries.append("client_id=\(clientID)")
//        }
//        
//        if let redirectURI = redirectURI {
//            queries.append("redirect_uri=\(redirectURI)")
//        }
//        
//        if let state = state {
//            queries.append("state=\(state)")
//        }
//        
//        if let scope = scope {
//            queries.append("scope=\(scope)")
//        }
//        
//        if let responseType = responseType {
//            queries.append("response_type=\(responseType)")
//        }
//        
//        let requestQuery = queries.joined(separator: "&")
//        
//        let authRequest = Request(method: .post, uri: "/oauth/authorize?\(requestQuery)")
//        
//        var data = Node([:], in: nil)
//        
//        if let approve = approve {
//            try data.set("applicationAuthorized", approve)
//        }
//        
//        if let csrfToken = csrfToken {
//            try data.set("csrfToken", csrfToken)
//        }
//        
//        if let sessionCookie = sessionCookie {
//            authRequest.cookies.insert(sessionCookie)
//        }
//        
//        if let sessionID = sessionID {
//            let customSessionCookie = Cookie(name: "vapor-session", value: sessionID)
//            authRequest.cookies.insert(customSessionCookie)
//        }
//        
//        authRequest.formURLEncoded = data
//        
//        let authAuthenticatedKey = "auth-authenticated"
//        
//        if let user = user {
//            authRequest.storage[authAuthenticatedKey] = user
//        }
//        
//        return try drop.respond(to: authRequest)
//    }
//    
//    static let anyUserID: Identifier = "12345-asbdsadi"
//    static func anyOAuthUser() -> OAuthUser {
//        return OAuthUser(userID: TestDataBuilder.anyUserID, username: "hansolo", emailAddress: "han.solo@therebelalliance.com", password: "leia".makeBytes())
//    }
//}

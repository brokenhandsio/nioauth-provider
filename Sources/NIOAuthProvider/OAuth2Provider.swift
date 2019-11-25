//import Vapor
//import HTTP
//import AuthProvider
//
//struct OAuth2Provider {
//
//    let tokenManager: TokenManager
//    let userManager: UserManager
//    let authorizePostHandler: AuthorizePostHandler
//    let authorizeGetHandler: AuthorizeGetHandler
//    let tokenHandler: TokenHandler
//    let tokenIntrospectionHandler: TokenIntrospectionHandler
//    let resourceServerAuthenticator: ResourceServerAuthenticator
//
//    init(codeManager: CodeManager, tokenManager: TokenManager, clientRetriever: ClientRetriever,
//         authorizeHandler: AuthorizeHandler, userManager: UserManager, validScopes: [String]?,
//         resourceServerRetriever: ResourceServerRetriever, environment: Environment, log: LogProtocol) {
//        self.tokenManager = tokenManager
//        self.userManager = userManager
//
//        resourceServerAuthenticator = ResourceServerAuthenticator(resourceServerRetriever: resourceServerRetriever)
//        let scopeValidator = ScopeValidator(validScopes: validScopes, clientRetriever: clientRetriever)
//        let clientValidator = ClientValidator(clientRetriever: clientRetriever, scopeValidator: scopeValidator, environment: environment)
//        authorizePostHandler = AuthorizePostHandler(tokenManager: tokenManager, codeManager: codeManager, clientValidator: clientValidator)
//        authorizeGetHandler = AuthorizeGetHandler(authorizeHandler: authorizeHandler, clientValidator: clientValidator)
//        tokenHandler = TokenHandler(clientValidator: clientValidator, tokenManager: tokenManager, scopeValidator: scopeValidator,
//                                    codeManager: codeManager, userManager: userManager, log: log)
//        tokenIntrospectionHandler = TokenIntrospectionHandler(clientValidator: clientValidator, tokenManager: tokenManager,
//                                                              userManager: userManager)
//    }
//
//    func addRoutes(to router: RouteBuilder) {
//        router.get("oauth", "authorize", handler: authorizeGetHandler.handleRequest)
//        router.post("oauth", "authorize", handler: authorizePostHandler.handleRequest)
//        router.post("oauth", "token", handler: tokenHandler.handleRequest)
//
//        let tokenIntrospectionAuthMiddleware = TokenIntrospectionAuthMiddleware(resourceServerAuthenticator: resourceServerAuthenticator)
//        let resourceServerProtected = router.grouped(tokenIntrospectionAuthMiddleware)
//        resourceServerProtected.post("oauth", "token_info", handler: tokenIntrospectionHandler.handleRequest)
//    }
//
//}

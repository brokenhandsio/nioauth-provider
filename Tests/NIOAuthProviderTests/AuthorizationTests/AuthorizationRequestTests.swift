import XCTest
import NIOAuthProvider
import NIO

class AuthorizationRequestTests: XCTestCase {    

    // MARK: - Properties

//    var drop: Droplet!
//    let fakeClientRetriever = FakeClientGetter()
//    let capturingAuthoriseHandler = CapturingAuthoriseHandler()
//    let clientID = "1234567890"
//    let redirectURI = "https://api.brokenhands.io/callback"

    // MARK: - Overrides

    override func setUp() {
//        let oauthClient = OAuthClient(clientID: clientID, redirectURIs: [redirectURI], allowedGrantType: .authorization)
//        fakeClientRetriever.validClients[clientID] = oauthClient
//        drop = try! TestDataBuilder.getOAuthDroplet(clientRetriever: fakeClientRetriever, authorizeHandler: capturingAuthoriseHandler)
    }

    // MARK: - Tests

//    func testThatAuthorizationCodeRequestCallsAuthoriseHandlerWithQueryParameters() throws {
//        let responseType = "code"
//
//        _ = try respondToOAuthRequest(responseType: responseType, clientID: clientID, redirectURI: redirectURI)
//
//        XCTAssertEqual(capturingAuthoriseHandler.responseType, responseType)
//        XCTAssertEqual(capturingAuthoriseHandler.clientID, clientID)
//        XCTAssertEqual(capturingAuthoriseHandler.redirectURI, URIParser.shared.parse(bytes: redirectURI.makeBytes()))
//    }

//    func testThatAuthorizationTokenRequestRedirectsToAuthoriseApplicationPage() throws {
//        let responseType = "token"
//        let implicitClientID = "implicit"
//        let implicitClient = OAuthClient(clientID: implicitClientID, redirectURIs: [redirectURI], allowedGrantType: .implicit)
//        fakeClientRetriever.validClients[implicitClientID] = implicitClient
//
//        _ = try respondToOAuthRequest(responseType: responseType, clientID: implicitClientID, redirectURI: redirectURI)
//
//        XCTAssertEqual(capturingAuthoriseHandler.responseType, responseType)
//        XCTAssertEqual(capturingAuthoriseHandler.clientID, implicitClientID)
//        XCTAssertEqual(capturingAuthoriseHandler.redirectURI, URIParser.shared.parse(bytes: redirectURI.makeBytes()))
//    }
//
//    func testThatAuthorizeRequestResponseTypeRedirectsBackToClientWithErrorCode() throws {
//        let response = try respondToOAuthRequest(responseType: nil, clientID: clientID, redirectURI: redirectURI)
//
//        XCTAssertEqual(response.status, .seeOther)
//        XCTAssertEqual(response.headers[.location], "\(redirectURI)?error=invalid_request&error_description=Request+was+missing+the+response_type+parameter")
//    }
//
//    func testThatBadRequestRedirectsBackToClientRedirectURI() throws {
//        let differentURI = "https://api.test.com/cb"
//        let clientID = "123ABC"
//        let client = OAuthClient(clientID: clientID, redirectURIs: [differentURI], allowedGrantType: .authorization)
//        fakeClientRetriever.validClients[clientID] = client
//
//        let response = try respondToOAuthRequest(responseType: nil, clientID: clientID, redirectURI: differentURI)
//
//        XCTAssertEqual(response.headers[.location], "\(differentURI)?error=invalid_request&error_description=Request+was+missing+the+response_type+parameter")
//    }
//
//    func testThatStateProvidedWhenRedirectingForMissingReponseType() throws {
//        let state = "xcoivjuywkdkhvusuye3kch"
//
//        let response = try respondToOAuthRequest(responseType: nil, clientID: clientID, redirectURI: redirectURI, state: state)
//
//        XCTAssertTrue(response.headers[.location]?.contains("state=\(state)") ?? false)
//    }
//
//    func testThatAuthorizeRequestRedirectsBackToClientWithErrorCodeResponseTypeIsNotCodeOrToken() throws {
//        let response = try respondToOAuthRequest(responseType: "invalid", clientID: clientID, redirectURI: redirectURI)
//
//        XCTAssertEqual(response.status, .seeOther)
//        XCTAssertEqual(response.headers[.location], "\(redirectURI)?error=invalid_request&error_description=invalid+response+type")
//    }
//
//    func testThatStateProvidedWhenRedirectingForInvalidReponseType() throws {
//        let state = "xcoivjuywkdkhvusuye3kch"
//
//        let response = try respondToOAuthRequest(responseType: "invalid", clientID: clientID, redirectURI: redirectURI, state: state)
//
//        XCTAssertTrue(response.headers[.location]?.contains("state=\(state)") ?? false)
//    }
//
//    func testThatAuthorizeRequestFailsWithoutClientIDQuery() throws {
//        _ = try respondToOAuthRequest(clientID: nil, redirectURI: redirectURI)
//
//        XCTAssertEqual(capturingAuthoriseHandler.authorizationError, .invalidClientID)
//    }
//
//    func testThatAuthorizeRequestFailsWithoutRedirectURI() throws {
//        _ = try respondToOAuthRequest(clientID: clientID, redirectURI: nil)
//
//        XCTAssertEqual(capturingAuthoriseHandler.authorizationError, .invalidRedirectURI)
//    }
//
//    func testThatSingleScopePassedThroughToAuthorizationHandler() throws {
//        let scope = "profile"
//
//        _ = try respondToOAuthRequest(clientID: clientID, redirectURI: redirectURI, scope: scope)
//
//        XCTAssertEqual(capturingAuthoriseHandler.scope?.count, 1)
//        XCTAssertTrue(capturingAuthoriseHandler.scope?.contains(scope) ?? false)
//    }
//
//    func testThatMultipleScopesPassedThroughToAuthorizationHandler() throws {
//        let scope1 = "profile"
//        let scope2 = "create"
//        let scope = "\(scope1)+\(scope2)"
//
//        _ = try respondToOAuthRequest(clientID: clientID, redirectURI: redirectURI, scope: scope)
//
//        XCTAssertEqual(capturingAuthoriseHandler.scope?.count, 2)
//        XCTAssertTrue(capturingAuthoriseHandler.scope?.contains(scope1) ?? false)
//        XCTAssertTrue(capturingAuthoriseHandler.scope?.contains(scope2) ?? false)
//    }
//
//    func testStatePassedThroughToAuthorizationHandler() throws {
//        let state = "xcoivjuywkdkhvusuye3kch"
//
//        _ = try respondToOAuthRequest(clientID: clientID, redirectURI: redirectURI, state: state)
//
//        XCTAssertEqual(capturingAuthoriseHandler.state, state)
//    }
//
//    func testAllPropertiesPassedThroughToAuthorizationHandler() throws {
//        let responseType = "code"
//        let scope1 = "profile"
//        let scope2 = "create"
//        let state = "xcoivjuywkdkhvusuye3kch"
//        let scope = "\(scope1)+\(scope2)"
//
//        _ = try respondToOAuthRequest(responseType: responseType, clientID: clientID, redirectURI: redirectURI, scope: scope, state: state)
//
//        XCTAssertEqual(capturingAuthoriseHandler.responseType, responseType)
//        XCTAssertEqual(capturingAuthoriseHandler.clientID, clientID)
//        XCTAssertEqual(capturingAuthoriseHandler.redirectURI, URIParser.shared.parse(bytes: redirectURI.makeBytes()))
//        XCTAssertEqual(capturingAuthoriseHandler.scope?.count, 2)
//        XCTAssertTrue(capturingAuthoriseHandler.scope?.contains(scope1) ?? false)
//        XCTAssertTrue(capturingAuthoriseHandler.scope?.contains(scope2) ?? false)
//        XCTAssertEqual(capturingAuthoriseHandler.state, state)
//    }
//
//    func testThatAnInvalidClientIDLoadsErrorPage() throws {
//        let clientID = "invalid"
//
//        _ = try respondToOAuthRequest(clientID: clientID, redirectURI: redirectURI)
//
//        XCTAssertEqual(capturingAuthoriseHandler.authorizationError, .invalidClientID)
//    }
//
//    func testThatInvalidRedirectURICallsErrorHandlerWithCorrectError() throws {
//        _ = try respondToOAuthRequest(clientID: clientID, redirectURI: "http://this.does.not/match")
//
//        XCTAssertEqual(capturingAuthoriseHandler.authorizationError, .invalidRedirectURI)
//    }
//
//    func testThatUnknownScopeReturnsInvalidScopeError() throws {
//        drop = try TestDataBuilder.getOAuthDroplet(clientRetriever: fakeClientRetriever, authorizeHandler: capturingAuthoriseHandler, validScopes: ["email", "profile", "admin"], environment: .production)
//        let invalidScope = "create"
//
//        let response = try respondToOAuthRequest(clientID: clientID, redirectURI: redirectURI, scope: invalidScope)
//
//        XCTAssertEqual(response.status, .seeOther)
//        XCTAssertEqual(response.headers[.location], "\(redirectURI)?error=invalid_scope&error_description=scope+is+unknown")
//    }
//
//    func testThatClientAccessingScopeItShouldNotReturnsInvalidScopeError() throws {
//        let clientID = "ABCDEFGH"
//        let scopes = ["email", "profile", "admin"]
//        let invalidScope = "create"
//        let scopeClient = OAuthClient(clientID: clientID, redirectURIs: [redirectURI], validScopes: scopes, allowedGrantType: .authorization)
//        fakeClientRetriever.validClients[clientID] = scopeClient
//
//        let response = try respondToOAuthRequest(clientID: clientID, redirectURI: redirectURI, scope: invalidScope)
//
//        XCTAssertEqual(response.status, .seeOther)
//        XCTAssertEqual(response.headers[.location], "\(redirectURI)?error=invalid_scope&error_description=scope+is+invalid")
//    }
//
//    func testConfidentialClientMakingTokenRequestResultsInUnauthorizedClientError() throws {
//        let clientID = "ABCDEFGH"
//        let responseType = "token"
//        let confidentialClient = OAuthClient(clientID: clientID, redirectURIs: [redirectURI], confidential: true, allowedGrantType: .authorization)
//        fakeClientRetriever.validClients[clientID] = confidentialClient
//
//        let response = try respondToOAuthRequest(responseType: responseType, clientID: clientID, redirectURI: redirectURI)
//
//        XCTAssertEqual(response.status, .seeOther)
//        XCTAssertEqual(response.headers[.location], "\(redirectURI)?error=unauthorized_client&error_description=token+grant+disabled+for+confidential+clients")
//    }
//
//    func testNonHTTPSRedirectURICanNotBeUsedWhenInProduction() throws {
//        drop = try TestDataBuilder.getOAuthDroplet(clientRetriever: fakeClientRetriever, authorizeHandler: capturingAuthoriseHandler, environment: .production)
//
//        let nonHTTPSRedirectURI = "http://api.brokenhands.io/callback/"
//        let httpClient = OAuthClient(clientID: clientID, redirectURIs: [nonHTTPSRedirectURI], allowedGrantType: .authorization)
//        fakeClientRetriever.validClients[clientID] = httpClient
//
//        _ = try respondToOAuthRequest(clientID: clientID, redirectURI: nonHTTPSRedirectURI)
//
//        XCTAssertEqual(capturingAuthoriseHandler.authorizationError, .httpRedirectURI)
//    }
//
//    func testCSRFTokenProvidedToAuthorizeHandler() throws {
//        _ = try respondToOAuthRequest(clientID: clientID, redirectURI: redirectURI)
//
//        XCTAssertNotNil(capturingAuthoriseHandler.csrfToken)
//    }
//
//    func testCSRFTokenIsDifferentEachTime() throws {
//        _ = try respondToOAuthRequest(clientID: clientID, redirectURI: redirectURI)
//
//        let firstToken = capturingAuthoriseHandler.csrfToken
//
//        _ = try respondToOAuthRequest(clientID: clientID, redirectURI: redirectURI)
//
//        XCTAssertNotEqual(firstToken, capturingAuthoriseHandler.csrfToken)
//    }
//
//    func testClientNotConfiguredWithAccessToAuthCodeFlowCantAccessItForGet() throws {
//        let unauthorizedID = "not-allowed"
//        let unauthorizedClient = OAuthClient(clientID: unauthorizedID, redirectURIs: [redirectURI], clientSecret: nil, validScopes: nil,allowedGrantType: .implicit)
//        fakeClientRetriever.validClients[unauthorizedID] = unauthorizedClient
//
//        let response = try respondToOAuthRequest(clientID: unauthorizedID, redirectURI: redirectURI)
//
//        XCTAssertEqual(response.status, .forbidden)
//    }
//
//    func testClientConfiguredWithAccessToAuthCodeFlowCanAccessItForGet() throws {
//        let authorizedID = "not-allowed"
//        let authorizedClient = OAuthClient(clientID: authorizedID, redirectURIs: [redirectURI], clientSecret: nil, validScopes: nil, allowedGrantType: .authorization)
//        fakeClientRetriever.validClients[authorizedID] = authorizedClient
//
//        let response = try respondToOAuthRequest(clientID: authorizedID, redirectURI: redirectURI)
//
//        XCTAssertEqual(response.status, .ok)
//    }
//
//    // MARK: - Private
//
//    private func respondToOAuthRequest(responseType: String? = "code", clientID: String?, redirectURI: String?, scope: String? = nil, state: String? = nil) throws -> Response {
//
//        return try TestDataBuilder.getAuthRequestResponse(with: drop, responseType: responseType, clientID: clientID, redirectURI: redirectURI, scope: scope, state: state)
//    }
    
}

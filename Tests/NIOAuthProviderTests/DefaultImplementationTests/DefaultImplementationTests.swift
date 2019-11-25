import XCTest
@testable import NIOAuthProvider
import NIO

class DefaultImplementationTests: XCTestCase {

//    // MARK: - Properties
//
//
//    // MARK: - Overrides
//
//    override func setUp() {
//    }
//
//    // MARK: - Tests
//
//    func testThatEmptyResourceServerRetrieverReturnsNilWhenGettingResourceServer() {
//        let emptyResourceServerRetriever = EmptyResourceServerRetriever()
//
//        XCTAssertNil(emptyResourceServerRetriever.getServer("some username"))
//    }
//
//    func testThatEmptyUserManagerReturnsNilWhenAttemptingToAuthenticate() {
//        let emptyUserManager = EmptyUserManager()
//        XCTAssertNil(emptyUserManager.authenticateUser(username: "username", password: "password"))
//    }
//
//    func testThatEmptyUserManagerReturnsNilWhenTryingToGetUser() {
//        let emptyUserManager = EmptyUserManager()
//        let idenfitier: Identifier = "some-id"
//        XCTAssertNil(emptyUserManager.getUser(userID: idenfitier))
//    }
//
//    func testThatEmptyAuthHandlerReturnsEmptyStringWhenHandlingAuthError() throws {
//        let emptyAuthHandler = EmptyAuthorizationHandler()
//
//        XCTAssertEqual(try emptyAuthHandler.handleAuthorizationError(.invalidClientID).makeResponse().body.bytes!, "".makeBytes())
//    }
//
//    func testThatEmptyAuthHandlerReturnsEmptyStringWhenHandlingAuthRequest() throws {
//        let emptyAuthHandler = EmptyAuthorizationHandler()
//        let request = Request(method: .post, uri: "/oauth/auth/")
//        let uri = URIParser.shared.parse(bytes: "https://api.brokenhands.io/callback".makeBytes())
//        let authRequestObject = AuthorizationRequestObject(responseType: "token", clientID: "client-ID", redirectURI: uri, scope: ["email"], state: "abcdef", csrfToken: "01234")
//
//        XCTAssertEqual(try emptyAuthHandler.handleAuthorizationRequest(request, authorizationRequestObject: authRequestObject).makeResponse().body.bytes!, "".makeBytes())
//    }
//
//    func testThatEmptyCodeManagerReturnsNilWhenGettingCode() {
//        let emptyCodeManager = EmptyCodeManager()
//        XCTAssertNil(emptyCodeManager.getCode("code"))
//    }
//
//    func testThatEmptyCodeManagerGeneratesEmptyStringAsCode() throws {
//        let emptyCodeManager = EmptyCodeManager()
//        let identifier: Identifier = "identifier"
//        XCTAssertEqual(try emptyCodeManager.generateCode(userID: identifier, clientID: "client-id", redirectURI: "https://api.brokenhands.io/callback", scopes: nil), "")
//    }
//
//    func testThatCodeUsedDoesNothingInEmptyCodeManager() {
//        let emptyCodeManager = EmptyCodeManager()
//        let identifier: Identifier = "identifier"
//        let code = OAuthCode(codeID: "id", clientID: "client-id", redirectURI: "https://api.brokenhands.io/callback", userID: identifier, expiryDate: Date(), scopes: nil)
//        emptyCodeManager.codeUsed(code)
//    }

}

import Foundation

struct CodeValidator<UserIDType> where UserIDType: Codable {
    func validateCode(_ code: OAuthCode<UserIDType>, clientID: String, redirectURI: String) -> Bool {
        guard code.clientID == clientID else {
            return false
        }

        guard code.expiryDate >= Date() else {
            return false
        }

        guard code.redirectURI == redirectURI else {
            return false
        }

        return true
    }
}

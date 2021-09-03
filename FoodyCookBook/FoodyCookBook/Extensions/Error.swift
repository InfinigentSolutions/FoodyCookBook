import Alamofire
import Foundation

extension Error {

    var unacceptableStatusCode: Int? {
        switch asAFError {
            case let .responseValidationFailed(reason):
                switch reason {
                    case let .unacceptableStatusCode(code):
                        return code
                    default:
                        return nil
                }
            default:
                return nil
        }
    }
}

import Alamofire
import Foundation
import SwiftyJSON

typealias APIClientSuccessJSONHandler = (_ json: JSON) -> Void
typealias APIClientSuccessValueHandler = (_ value: Any) -> Void
typealias APIClientSuccessVoidHandler = () -> Void
typealias APIClientFailureHandler = (_ error: Error?) -> Void
typealias APIClientNetworkHandler = () -> Void

// MARK: - APIClient

enum APIClient {

    static let baseURL: URL = {
        URL(string: "https://www.themealdb.com/api/json/v1/1")!
    }()

    static let session: Session = {
        let session = Session(configuration: .default)
        return session
    }()

    static func getJSON(_ url: URL,
                        parameters: Parameters,
                        success: @escaping APIClientSuccessJSONHandler,
                        failure: @escaping APIClientFailureHandler) {
        requestJSON(url,
                    method: .get,
                    parameters: parameters,
                    encoding: URLEncoding.queryString,
                    success: success,
                    failure: failure)
    }

    static func postJSON(_ url: URL,
                         parameters: Parameters,
                         success: @escaping APIClientSuccessJSONHandler,
                         failure: @escaping APIClientFailureHandler) {
        requestJSON(url,
                    method: .post,
                    parameters: parameters,
                    encoding: JSONEncoding.default,
                    success: success,
                    failure: failure)
    }

    static func patchJSON(_ url: URL,
                          parameters: Parameters,
                          success: @escaping APIClientSuccessJSONHandler,
                          failure: @escaping APIClientFailureHandler) {
        requestJSON(url,
                    method: .patch,
                    parameters: parameters,
                    encoding: JSONEncoding.default,
                    success: success,
                    failure: failure)
    }

    static func putJSON(_ url: URL,
                        parameters: Parameters,
                        success: @escaping APIClientSuccessJSONHandler,
                        failure: @escaping APIClientFailureHandler) {
        requestJSON(url,
                    method: .put,
                    parameters: parameters,
                    encoding: JSONEncoding.default,
                    success: success,
                    failure: failure)
    }

    static func deleteJSON(_ url: URL,
                           parameters: Parameters,
                           success: @escaping APIClientSuccessJSONHandler,
                           failure: @escaping APIClientFailureHandler) {
        requestJSON(url,
                    method: .delete,
                    parameters: parameters,
                    encoding: JSONEncoding.default,
                    success: success,
                    failure: failure)
    }

    static func requestJSON(_ url: URL,
                            method: Alamofire.HTTPMethod,
                            parameters: Alamofire.Parameters,
                            encoding: Alamofire.ParameterEncoding,
                            success: @escaping APIClientSuccessJSONHandler,
                            failure: @escaping APIClientFailureHandler) {
        requestValue(url, method: method, parameters: parameters, encoding: encoding, success: { value in
            let json = JSON(value)
            if let statusCode = json["statusCode"].number {
                if statusCode.intValue == 403 {
                    if let message = json["message"].string {
                        failure(QError(localizedDescription: message))
                    }
                } else {
                    if !json["error"].isEmpty {
                        failure(QError(localizedDescription: json["error"].string ?? ""))
                    } else {
                        success(json)
                    }
                }
            } else {
                if !json["error"].isEmpty {
                    failure(QError(localizedDescription: json["error"].string ?? ""))
                } else {
                    success(json)
                }
            }
        }, failure: failure)
    }

    static func requestValue(_ url: URL,
                             method: Alamofire.HTTPMethod,
                             parameters: Alamofire.Parameters?,
                             encoding: Alamofire.ParameterEncoding,
                             success: @escaping APIClientSuccessValueHandler,
                             failure: @escaping APIClientFailureHandler) {
        let request = session.request(url,
                                      method: method,
                                      parameters: parameters,
                                      encoding: encoding,
                                      headers: nil)
            .validate()
            .responseJSON { response in
                debugPrint(response)
                if response.response?.statusCode == 200, response.value == nil {
                    success(response.value as Any)
                } else if response.response?.statusCode == 403 || response.response?.statusCode == 400, response.data != nil {
                    failure(QError(localizedDescription: "", statusCode: response.response?.statusCode ?? 0))
                } else if response.response?.statusCode == 404 || response.response?.statusCode == 401, url.absoluteString.contains("/auth/login") {
                    failure(QError(localizedDescription: "", statusCode: response.response?.statusCode ?? 0))
                } else if response.response?.statusCode == 409 {
                    failure(QError(localizedDescription: "", statusCode: response.response?.statusCode ?? 0))
                } else {
                    switch response.result {
                        case let .success(value):
                            success(value)
                        case let .failure(error):
                            failure(error)
                    }
                }
            }
        request.cURLDescription { description in
            debugPrint(description)
        }
    }
}

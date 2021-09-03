import Alamofire
import UIKit

extension APIClient {

    struct GetRandomMealRequest {}

    static func getRandomMeal(_ request: GetRandomMealRequest, success: @escaping (Meals) -> Void, failure: @escaping APIClientFailureHandler) {
        let url = baseURL.appendingPathComponent("/random.php")
        let parameters: Parameters = [:]
        getJSON(url, parameters: parameters, success: { response in
            do {
                let meals: Meals = try Meals(data: response.rawData())
                success(meals)
            } catch {
                print(error)
                failure(error)
            }
        }, failure: failure)
    }
}

extension APIClient {

    struct GetMealsRequest {}

    static func getMeals(_ request: GetMealsRequest, success: @escaping (Meals) -> Void, failure: @escaping APIClientFailureHandler) {
        let url = baseURL.appendingPathComponent("/search.php")
        let parameters: Parameters = ["f": "a"]
        getJSON(url, parameters: parameters, success: { response in
            do {
                let meals: Meals = try Meals(data: response.rawData())
                success(meals)
            } catch {
                print(error)
                failure(error)
            }
        }, failure: failure)
    }
}

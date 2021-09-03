import Alamofire
import Foundation
import ProgressHUD

// MARK: - MealService

class MealService: NSObject {

    // MARK: Lifecycle

    override init() {
        super.init()
    }

    // MARK: Internal

    static let shared = MealService()
}

extension MealService {

    static func getRandomMeal(success: @escaping (_ meals: Meals) -> Void, failure: @escaping APIClientFailureHandler, network: @escaping APIClientNetworkHandler) {
        NetworkService.checkConnectivity {
            network()
        }

        ProgressHUD.show()
        let request = APIClient.GetRandomMealRequest()
        APIClient.getRandomMeal(request) { meals in
            success(meals)
            ProgressHUD.dismiss()
        } failure: { _ in
            failure(nil)
            ProgressHUD.dismiss()
        }
    }

    static func getMeals(success: @escaping (_ meals: Meals) -> Void, failure: @escaping APIClientFailureHandler, network: @escaping APIClientNetworkHandler) {
        NetworkService.checkConnectivity {
            network()
        }

        ProgressHUD.show()
        let request = APIClient.GetMealsRequest()
        APIClient.getMeals(request) { meals in
            success(meals)
            ProgressHUD.dismiss()
        } failure: { _ in
            failure(nil)
            ProgressHUD.dismiss()
        }
    }
}

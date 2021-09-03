import Foundation

class QError: NSError {

    init(localizedDescription: String, statusCode: Int = -1) {
        super.init(domain: "com.infinigentsolutions.FoodyCookBook", code: statusCode, userInfo: [NSLocalizedDescriptionKey: localizedDescription])
    }

    @available(*, unavailable) required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

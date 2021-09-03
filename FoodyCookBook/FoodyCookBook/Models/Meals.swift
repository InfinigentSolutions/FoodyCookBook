import Foundation

// MARK: - Meals

class Meals: Codable {

    // MARK: Lifecycle

    init(meals: [Meal]?) {
        self.meals = meals
    }

    // MARK: Internal

    enum CodingKeys: String, CodingKey {
        case meals
    }

    var meals: [Meal]?
}

// MARK: Meals convenience initializers and mutators

extension Meals {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Meals.self, from: data)
        self.init(meals: me.meals)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        meals: [Meal]?? = nil
    ) -> Meals {
        return Meals(
            meals: meals ?? self.meals
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try jsonData(), encoding: encoding)
    }
}

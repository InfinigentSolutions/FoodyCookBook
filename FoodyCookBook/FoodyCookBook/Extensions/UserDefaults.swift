import Foundation

extension UserDefaults {

	class var favouriteMeals: [Meal]? {
		get {
			guard let result = UserDefaults.standard.value(forKey: #function) as? Data else {
				return nil
			}
			return try? JSONDecoder().decode([Meal].self, from: result)
		}
		set(value) {
			let jsonData = try? JSONEncoder().encode(value)
			UserDefaults.standard.set(jsonData, forKey: #function)
		}
	}

	func set<T: Codable>(object: T, forKey: String) throws {
		let jsonData = try JSONEncoder().encode(object)
		set(jsonData, forKey: forKey)
	}

	func get<T: Codable>(objectType: T.Type, forKey: String) throws -> T? {
		guard let result = value(forKey: forKey) as? Data else {
			return nil
		}
		return try JSONDecoder().decode(objectType, from: result)
	}
}

import Foundation

// MARK: - Meal

class Meal: Codable {

    // MARK: Lifecycle

    init(idMeal: String?, strMeal: String?, strDrinkAlternate: JSONNull?, strCategory: String?, strArea: String?, strInstructions: String?, strMealThumb: String?, strTags: String?, strYoutube: String?, strIngredient1: String?, strIngredient2: String?, strIngredient3: String?, strIngredient4: String?, strIngredient5: String?, strIngredient6: String?, strIngredient7: String?, strIngredient8: String?, strIngredient9: String?, strIngredient10: String?, strIngredient11: String?, strIngredient12: String?, strIngredient13: String?, strIngredient14: String?, strIngredient15: String?, strIngredient16: String?, strIngredient17: String?, strIngredient18: String?, strIngredient19: String?, strIngredient20: String?, strMeasure1: String?, strMeasure2: String?, strMeasure3: String?, strMeasure4: String?, strMeasure5: String?, strMeasure6: String?, strMeasure7: String?, strMeasure8: String?, strMeasure9: String?, strMeasure10: String?, strMeasure11: String?, strMeasure12: String?, strMeasure13: String?, strMeasure14: String?, strMeasure15: String?, strMeasure16: String?, strMeasure17: String?, strMeasure18: String?, strMeasure19: String?, strMeasure20: String?, strSource: String?, strImageSource: String?, strCreativeCommonsConfirmed: JSONNull?, dateModified: JSONNull?) {
        self.idMeal = idMeal
        self.strMeal = strMeal
        self.strDrinkAlternate = strDrinkAlternate
        self.strCategory = strCategory
        self.strArea = strArea
        self.strInstructions = strInstructions
        self.strMealThumb = strMealThumb
        self.strTags = strTags
        self.strYoutube = strYoutube
        self.strIngredient1 = strIngredient1
        self.strIngredient2 = strIngredient2
        self.strIngredient3 = strIngredient3
        self.strIngredient4 = strIngredient4
        self.strIngredient5 = strIngredient5
        self.strIngredient6 = strIngredient6
        self.strIngredient7 = strIngredient7
        self.strIngredient8 = strIngredient8
        self.strIngredient9 = strIngredient9
        self.strIngredient10 = strIngredient10
        self.strIngredient11 = strIngredient11
        self.strIngredient12 = strIngredient12
        self.strIngredient13 = strIngredient13
        self.strIngredient14 = strIngredient14
        self.strIngredient15 = strIngredient15
        self.strIngredient16 = strIngredient16
        self.strIngredient17 = strIngredient17
        self.strIngredient18 = strIngredient18
        self.strIngredient19 = strIngredient19
        self.strIngredient20 = strIngredient20
        self.strMeasure1 = strMeasure1
        self.strMeasure2 = strMeasure2
        self.strMeasure3 = strMeasure3
        self.strMeasure4 = strMeasure4
        self.strMeasure5 = strMeasure5
        self.strMeasure6 = strMeasure6
        self.strMeasure7 = strMeasure7
        self.strMeasure8 = strMeasure8
        self.strMeasure9 = strMeasure9
        self.strMeasure10 = strMeasure10
        self.strMeasure11 = strMeasure11
        self.strMeasure12 = strMeasure12
        self.strMeasure13 = strMeasure13
        self.strMeasure14 = strMeasure14
        self.strMeasure15 = strMeasure15
        self.strMeasure16 = strMeasure16
        self.strMeasure17 = strMeasure17
        self.strMeasure18 = strMeasure18
        self.strMeasure19 = strMeasure19
        self.strMeasure20 = strMeasure20
        self.strSource = strSource
        self.strImageSource = strImageSource
        self.strCreativeCommonsConfirmed = strCreativeCommonsConfirmed
        self.dateModified = dateModified
    }

    // MARK: Internal

    enum CodingKeys: String, CodingKey {
        case idMeal
        case strMeal
        case strDrinkAlternate
        case strCategory
        case strArea
        case strInstructions
        case strMealThumb
        case strTags
        case strYoutube
        case strIngredient1
        case strIngredient2
        case strIngredient3
        case strIngredient4
        case strIngredient5
        case strIngredient6
        case strIngredient7
        case strIngredient8
        case strIngredient9
        case strIngredient10
        case strIngredient11
        case strIngredient12
        case strIngredient13
        case strIngredient14
        case strIngredient15
        case strIngredient16
        case strIngredient17
        case strIngredient18
        case strIngredient19
        case strIngredient20
        case strMeasure1
        case strMeasure2
        case strMeasure3
        case strMeasure4
        case strMeasure5
        case strMeasure6
        case strMeasure7
        case strMeasure8
        case strMeasure9
        case strMeasure10
        case strMeasure11
        case strMeasure12
        case strMeasure13
        case strMeasure14
        case strMeasure15
        case strMeasure16
        case strMeasure17
        case strMeasure18
        case strMeasure19
        case strMeasure20
        case strSource
        case strImageSource
        case strCreativeCommonsConfirmed
        case dateModified
    }

    var idMeal: String?
    var strMeal: String?
    var strDrinkAlternate: JSONNull?
    var strCategory: String?
    var strArea: String?
    var strInstructions: String?
    var strMealThumb: String?
    var strTags: String?
    var strYoutube: String?
    var strIngredient1: String?
    var strIngredient2: String?
    var strIngredient3: String?
    var strIngredient4: String?
    var strIngredient5: String?
    var strIngredient6: String?
    var strIngredient7: String?
    var strIngredient8: String?
    var strIngredient9: String?
    var strIngredient10: String?
    var strIngredient11: String?
    var strIngredient12: String?
    var strIngredient13: String?
    var strIngredient14: String?
    var strIngredient15: String?
    var strIngredient16: String?
    var strIngredient17: String?
    var strIngredient18: String?
    var strIngredient19: String?
    var strIngredient20: String?
    var strMeasure1: String?
    var strMeasure2: String?
    var strMeasure3: String?
    var strMeasure4: String?
    var strMeasure5: String?
    var strMeasure6: String?
    var strMeasure7: String?
    var strMeasure8: String?
    var strMeasure9: String?
    var strMeasure10: String?
    var strMeasure11: String?
    var strMeasure12: String?
    var strMeasure13: String?
    var strMeasure14: String?
    var strMeasure15: String?
    var strMeasure16: String?
    var strMeasure17: String?
    var strMeasure18: String?
    var strMeasure19: String?
    var strMeasure20: String?
    var strSource: String?
    var strImageSource: String?
    var strCreativeCommonsConfirmed: JSONNull?
    var dateModified: JSONNull?
}

// MARK: Meal convenience initializers and mutators

extension Meal {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Meal.self, from: data)
        self.init(idMeal: me.idMeal, strMeal: me.strMeal, strDrinkAlternate: me.strDrinkAlternate, strCategory: me.strCategory, strArea: me.strArea, strInstructions: me.strInstructions, strMealThumb: me.strMealThumb, strTags: me.strTags, strYoutube: me.strYoutube, strIngredient1: me.strIngredient1, strIngredient2: me.strIngredient2, strIngredient3: me.strIngredient3, strIngredient4: me.strIngredient4, strIngredient5: me.strIngredient5, strIngredient6: me.strIngredient6, strIngredient7: me.strIngredient7, strIngredient8: me.strIngredient8, strIngredient9: me.strIngredient9, strIngredient10: me.strIngredient10, strIngredient11: me.strIngredient11, strIngredient12: me.strIngredient12, strIngredient13: me.strIngredient13, strIngredient14: me.strIngredient14, strIngredient15: me.strIngredient15, strIngredient16: me.strIngredient16, strIngredient17: me.strIngredient17, strIngredient18: me.strIngredient18, strIngredient19: me.strIngredient19, strIngredient20: me.strIngredient20, strMeasure1: me.strMeasure1, strMeasure2: me.strMeasure2, strMeasure3: me.strMeasure3, strMeasure4: me.strMeasure4, strMeasure5: me.strMeasure5, strMeasure6: me.strMeasure6, strMeasure7: me.strMeasure7, strMeasure8: me.strMeasure8, strMeasure9: me.strMeasure9, strMeasure10: me.strMeasure10, strMeasure11: me.strMeasure11, strMeasure12: me.strMeasure12, strMeasure13: me.strMeasure13, strMeasure14: me.strMeasure14, strMeasure15: me.strMeasure15, strMeasure16: me.strMeasure16, strMeasure17: me.strMeasure17, strMeasure18: me.strMeasure18, strMeasure19: me.strMeasure19, strMeasure20: me.strMeasure20, strSource: me.strSource, strImageSource: me.strImageSource, strCreativeCommonsConfirmed: me.strCreativeCommonsConfirmed, dateModified: me.dateModified)
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
        idMeal: String?? = nil,
        strMeal: String?? = nil,
        strDrinkAlternate: JSONNull?? = nil,
        strCategory: String?? = nil,
        strArea: String?? = nil,
        strInstructions: String?? = nil,
        strMealThumb: String?? = nil,
        strTags: String?? = nil,
        strYoutube: String?? = nil,
        strIngredient1: String?? = nil,
        strIngredient2: String?? = nil,
        strIngredient3: String?? = nil,
        strIngredient4: String?? = nil,
        strIngredient5: String?? = nil,
        strIngredient6: String?? = nil,
        strIngredient7: String?? = nil,
        strIngredient8: String?? = nil,
        strIngredient9: String?? = nil,
        strIngredient10: String?? = nil,
        strIngredient11: String?? = nil,
        strIngredient12: String?? = nil,
        strIngredient13: String?? = nil,
        strIngredient14: String?? = nil,
        strIngredient15: String?? = nil,
        strIngredient16: String?? = nil,
        strIngredient17: String?? = nil,
        strIngredient18: String?? = nil,
        strIngredient19: String?? = nil,
        strIngredient20: String?? = nil,
        strMeasure1: String?? = nil,
        strMeasure2: String?? = nil,
        strMeasure3: String?? = nil,
        strMeasure4: String?? = nil,
        strMeasure5: String?? = nil,
        strMeasure6: String?? = nil,
        strMeasure7: String?? = nil,
        strMeasure8: String?? = nil,
        strMeasure9: String?? = nil,
        strMeasure10: String?? = nil,
        strMeasure11: String?? = nil,
        strMeasure12: String?? = nil,
        strMeasure13: String?? = nil,
        strMeasure14: String?? = nil,
        strMeasure15: String?? = nil,
        strMeasure16: String?? = nil,
        strMeasure17: String?? = nil,
        strMeasure18: String?? = nil,
        strMeasure19: String?? = nil,
        strMeasure20: String?? = nil,
        strSource: String?? = nil,
        strImageSource: String?? = nil,
        strCreativeCommonsConfirmed: JSONNull?? = nil,
        dateModified: JSONNull?? = nil
    ) -> Meal {
        return Meal(
            idMeal: idMeal ?? self.idMeal,
            strMeal: strMeal ?? self.strMeal,
            strDrinkAlternate: strDrinkAlternate ?? self.strDrinkAlternate,
            strCategory: strCategory ?? self.strCategory,
            strArea: strArea ?? self.strArea,
            strInstructions: strInstructions ?? self.strInstructions,
            strMealThumb: strMealThumb ?? self.strMealThumb,
            strTags: strTags ?? self.strTags,
            strYoutube: strYoutube ?? self.strYoutube,
            strIngredient1: strIngredient1 ?? self.strIngredient1,
            strIngredient2: strIngredient2 ?? self.strIngredient2,
            strIngredient3: strIngredient3 ?? self.strIngredient3,
            strIngredient4: strIngredient4 ?? self.strIngredient4,
            strIngredient5: strIngredient5 ?? self.strIngredient5,
            strIngredient6: strIngredient6 ?? self.strIngredient6,
            strIngredient7: strIngredient7 ?? self.strIngredient7,
            strIngredient8: strIngredient8 ?? self.strIngredient8,
            strIngredient9: strIngredient9 ?? self.strIngredient9,
            strIngredient10: strIngredient10 ?? self.strIngredient10,
            strIngredient11: strIngredient11 ?? self.strIngredient11,
            strIngredient12: strIngredient12 ?? self.strIngredient12,
            strIngredient13: strIngredient13 ?? self.strIngredient13,
            strIngredient14: strIngredient14 ?? self.strIngredient14,
            strIngredient15: strIngredient15 ?? self.strIngredient15,
            strIngredient16: strIngredient16 ?? self.strIngredient16,
            strIngredient17: strIngredient17 ?? self.strIngredient17,
            strIngredient18: strIngredient18 ?? self.strIngredient18,
            strIngredient19: strIngredient19 ?? self.strIngredient19,
            strIngredient20: strIngredient20 ?? self.strIngredient20,
            strMeasure1: strMeasure1 ?? self.strMeasure1,
            strMeasure2: strMeasure2 ?? self.strMeasure2,
            strMeasure3: strMeasure3 ?? self.strMeasure3,
            strMeasure4: strMeasure4 ?? self.strMeasure4,
            strMeasure5: strMeasure5 ?? self.strMeasure5,
            strMeasure6: strMeasure6 ?? self.strMeasure6,
            strMeasure7: strMeasure7 ?? self.strMeasure7,
            strMeasure8: strMeasure8 ?? self.strMeasure8,
            strMeasure9: strMeasure9 ?? self.strMeasure9,
            strMeasure10: strMeasure10 ?? self.strMeasure10,
            strMeasure11: strMeasure11 ?? self.strMeasure11,
            strMeasure12: strMeasure12 ?? self.strMeasure12,
            strMeasure13: strMeasure13 ?? self.strMeasure13,
            strMeasure14: strMeasure14 ?? self.strMeasure14,
            strMeasure15: strMeasure15 ?? self.strMeasure15,
            strMeasure16: strMeasure16 ?? self.strMeasure16,
            strMeasure17: strMeasure17 ?? self.strMeasure17,
            strMeasure18: strMeasure18 ?? self.strMeasure18,
            strMeasure19: strMeasure19 ?? self.strMeasure19,
            strMeasure20: strMeasure20 ?? self.strMeasure20,
            strSource: strSource ?? self.strSource,
            strImageSource: strImageSource ?? self.strImageSource,
            strCreativeCommonsConfirmed: strCreativeCommonsConfirmed ?? self.strCreativeCommonsConfirmed,
            dateModified: dateModified ?? self.dateModified
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try jsonData(), encoding: encoding)
    }
}

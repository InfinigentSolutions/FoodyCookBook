import UIKit

class MealIngredientsCell: UITableViewCell {

    @IBOutlet var lblIngredient: UILabel!
    @IBOutlet var lblMeasure: UILabel!

    internal func configure(ingredient: String, measure: String) {
        lblIngredient.text = ingredient
        lblMeasure.text = measure
    }
}

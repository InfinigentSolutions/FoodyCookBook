import UIKit

class MealIngredientsCell: UITableViewCell {

    @IBOutlet var lblIngredient: UILabel!
    @IBOutlet var lblMeasure: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    internal func configure(ingredient: String, measure: String) {
        lblIngredient.text = ingredient
        lblMeasure.text = measure
    }
}

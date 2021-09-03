import UIKit

class MealInstructionCell: UITableViewCell {

    @IBOutlet var lblInstructions: UILabel!

    internal func configure(_ meal: Meal?) {
        lblInstructions.text = meal?.strInstructions
    }
}

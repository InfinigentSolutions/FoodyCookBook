import Kingfisher
import UIKit

class MealDetailCell: UITableViewCell {

    @IBOutlet var imgMeal: UIImageView!

    @IBOutlet var lblName: UILabel!
    @IBOutlet var lblCategory: UILabel!
    @IBOutlet var lblArea: UILabel!
    @IBOutlet var lblTags: UILabel!

    internal func configure(_ meal: Meal?) {
        guard meal != nil else {
            return
        }

        let processor = RoundCornerImageProcessor(cornerRadius: 15)
        imgMeal.kf.setImage(with: URL(string: (meal?.strMealThumb ?? "").appending("/preview")), options: [.processor(processor)])

        lblName.text = meal?.strMeal
        lblCategory.text = meal?.strCategory
        lblArea.text = meal?.strArea
        lblTags.text = meal?.strTags
    }
}

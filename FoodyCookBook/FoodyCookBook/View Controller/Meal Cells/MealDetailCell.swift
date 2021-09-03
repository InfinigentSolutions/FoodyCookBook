import Kingfisher
import UIKit

class MealDetailCell: UITableViewCell {

    @IBOutlet var imgMeal: UIImageView!

    @IBOutlet var lblName: UILabel!
    @IBOutlet var lblCategory: UILabel!
    @IBOutlet var lblArea: UILabel!
    @IBOutlet var lblTags: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    internal func configure(_ meal: Meal?) {
        guard meal != nil else {
            return
        }

        imgMeal.kf.setImage(with: URL(string: (meal?.strMealThumb ?? "").appending("/preview")))

        lblName.text = meal?.strMeal
        lblCategory.text = meal?.strCategory
        lblArea.text = meal?.strArea
        lblTags.text = meal?.strTags
    }
}

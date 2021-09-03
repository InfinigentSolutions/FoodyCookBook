import Kingfisher
import UIKit

// MARK: - MealCellDelegate

protocol MealCellDelegate: AnyObject {
    func didTapFavourite(_ cell: MealCell, _ meal: Meal?)
}

// MARK: - MealCell

class MealCell: UITableViewCell {

    @IBOutlet var imgMeal: UIImageView!

    @IBOutlet var lblName: UILabel!
    @IBOutlet var lblCategory: UILabel!

    @IBOutlet var btnFavourite: UIButton!

    weak var delegate: MealCellDelegate?

    var meal: Meal?

    internal func configure(_ meal: Meal?) {
        guard meal != nil else {
            return
        }

        self.meal = meal

        let processor = RoundCornerImageProcessor(cornerRadius: 15)
        imgMeal.kf.setImage(with: URL(string: (meal?.strMealThumb ?? "").appending("/preview")), options: [.processor(processor)])

        lblName.text = meal?.strMeal
        lblCategory.text = meal?.strCategory

        if UserDefaults.favouriteMeals != nil {
            let arrMeal = UserDefaults.favouriteMeals ?? []
            if arrMeal.contains(where: { $0.idMeal?.toInt() ?? 0 == meal?.idMeal?.toInt() ?? 0
            }) {
                btnFavourite.setImage(UIImage(systemName: "heart.fill"), for: .normal)
            } else {
                btnFavourite.setImage(UIImage(systemName: "heart"), for: .normal)
            }
        } else {
            btnFavourite.setImage(UIImage(systemName: "heart"), for: .normal)
        }
    }

    @IBAction func btnFavourite(_ sender: Any) {
        delegate?.didTapFavourite(self, meal)
    }
}

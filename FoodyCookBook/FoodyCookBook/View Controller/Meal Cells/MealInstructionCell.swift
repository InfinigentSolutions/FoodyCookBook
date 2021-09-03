//
//  MealInstructionCell.swift
//  FoodyCookBook
//
//  Created by Vaibhav Jhaveri on 03/09/21.
//

import UIKit

class MealInstructionCell: UITableViewCell {
    
    @IBOutlet var lblInstructions: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    internal func configure(_ meal: Meal?) {
        lblInstructions.text = meal?.strInstructions
    }

}

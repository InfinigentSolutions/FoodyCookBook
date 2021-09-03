//
//  MealInstructionCell.swift
//  FoodyCookBook
//
//  Created by Vaibhav Jhaveri on 03/09/21.
//

import UIKit

class MealInstructionCell: UITableViewCell {
    
    @IBOutlet var lblInstructions: UILabel!

    internal func configure(_ meal: Meal?) {
        lblInstructions.text = meal?.strInstructions
    }

}

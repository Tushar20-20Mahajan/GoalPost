//
//  GoalCell.swift
//  GoalPost
//
//  Created by student on 30/04/24.
//

import UIKit

class GoalCell: UITableViewCell {

    @IBOutlet weak var goalDescriptionLabel : UILabel!
    @IBOutlet weak var goalTypeLabel : UILabel!
    @IBOutlet weak var goalProgressLabel : UILabel!
    
    func configureCell(description: String, type: GoalType, goalProgressAmount: Int) {
            self.goalDescriptionLabel.text = description
        self.goalTypeLabel.text = type.rawValue
            self.goalProgressLabel.text = String(describing: goalProgressAmount)
        }
}

//
//  FinishGoalVC.swift
//  GoalPost
//
//  Created by student on 01/05/24.
//

import UIKit

class FinishGoalVC: UIViewController {

    @IBOutlet weak var createGoalBtn: UIButton!
    
    @IBOutlet weak var pointsTextfeild: UITextField!
    
    var goalDescription: String!
    var goalType: GoalType!
    func initData(description: String, type: GoalType) {
            self.goalDescription = description
            self.goalType = type
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        createGoalBtn.bindToKeyboard()
    }
    

    @IBAction func createGoalBtnWasPressed(_ sender: Any) {
        
        // Pass data into core data Goal Model
    }
    
}

//
//  CreateGoalVC.swift
//  GoalPost
//
//  Created by student on 30/04/24.
//

import UIKit

class CreateGoalVC: UIViewController {
    
    @IBOutlet weak var goalTextView: UITextView!
    
    @IBOutlet weak var shortTermBtn: UIButton!
    
    @IBOutlet weak var longTermBtn: UIButton!
  
    
    @IBOutlet weak var nextBtn: UIButton!
    
    
    var goalType : GoalType = .shortTerm
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextBtn.bindToKeyboard()

        shortTermBtn.setSelectedColor()
        longTermBtn.setDeselectedColor()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func shortTermBtnWasPressed(_ sender: Any) {
        goalType = .shortTerm
        shortTermBtn.setSelectedColor()
        longTermBtn.setDeselectedColor()
    }
    
    @IBAction func longTermBtnWasPressed(_ sender: Any) {
        goalType = .longTerm
        shortTermBtn.setDeselectedColor()
        longTermBtn.setSelectedColor()
    }
    
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismissDetail()
    }
    
    
    
    
    
    @IBAction func nextBtnWasPressed(_ sender: Any) {
//        if goalTextView.text != "" && goalTextView.text != "What is your goal?" {
//            guard let finishGoalVC = storyboard?.instantiateViewController(withIdentifier: "FinishGoalVC")
//        }
        
        
    }
    

}

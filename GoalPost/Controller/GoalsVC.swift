//
//  ViewController.swift
//  GoalPost
//
//  Created by student on 30/04/24.
//

import UIKit


class GoalsVC: UIViewController {

    @IBOutlet weak var tableView : UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
        tableView.isHidden = false
        
    }

    @IBAction func addGoalBtnWasPressed(_ sender: Any) {
        print("Button was pressed")
    }
    
}

extension GoalsVC : UITableViewDelegate , UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "goalCell") as? GoalCell else {
            return UITableViewCell()
        }
        cell.configureCell(description: "Eat salad twice a week.", type: "Short Term", goalProgressAmount: 2)
        return cell
    }
    
    
}


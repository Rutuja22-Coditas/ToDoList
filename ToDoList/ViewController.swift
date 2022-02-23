//
//  ViewController.swift
//  ToDoList
//
//  Created by Coditas on 23/02/22.
//

import UIKit

struct toDoData{
    var date : String
    var tasks : [String]
}
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var data = [toDoData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        data = [toDoData(date: "Today,Feb 23", tasks: ["Go to marlet","Pay Bill"])]
        tableView.backgroundColor = UIColor.white
        
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        data.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data[section].tasks.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as? TableViewCell
        cell?.taskLbl.text = data[indexPath.section].tasks[indexPath.row]
        return cell!
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        data[section].date
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        60
    }
    
}


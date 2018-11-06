//
//  ViewController.swift
//  todoey
//
//  Created by Milind Kumar on 05/11/18.
//  Copyright © 2018 Milind. All rights reserved.
//

import UIKit
/*step 1-make table as initial view
 -change viewController name
 -also inherit it from uiTableViewController
 -link tableViewController to the chnaged viewController
 -name prototype cell inn the identifier else check the warning
 -- see here just bcz of one powerful surpassing we need not initialize delegate, datasource etc
 */
class TodoListViewController: UITableViewController/*here the initial view controller is changed now it is table view  so inherit it like uitableviewcontroller*/
 {

   // let array :[]=[]()   how to declare an empty array
    let array = ["find milk","buy eggs","destroy demo"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell",for: indexPath)//see here the tableview can be local or global bcz it is entirly a table view if it would be surpassed as in the case of chatView then glpobal would perfect
        cell.textLabel?.text = array[indexPath.row]
        return cell
    }
    //MARK THE TABLEVIEW DELEGATE
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       // print(array[indexPath.row])
        //checkmark comes from select protype cell ->identity->accessories->checkmark  // look down how to do by code
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark{
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }
        else{
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        tableView.deselectRow(at: indexPath, animated: true)// to leave the colour for fraction of sec
        
    }
    
}


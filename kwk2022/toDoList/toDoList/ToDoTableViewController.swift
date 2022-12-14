//
//  ToDoTableViewController.swift
//  toDoList
//
//  Created by Scholar on 8/12/22.
//

import UIKit

class ToDoTableViewController: UITableViewController {

    var listOfToDo : [ToDoCD] = []
    
//    func createToDo() -> [ToDoClass]{
//        let swiftToDo = ToDoClass()
//        swiftToDo.description = "Learn Swift"
//        swiftToDo.important = true
//
//        let dogToDo = ToDoClass()
//        dogToDo.description = "Walk the Dog"
//
//        return [swiftToDo, dogToDo]
//    }
    
    func getToDos() {
        if let accessToCoreData = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            
        
        
        if let dataFromCoreData = try? accessToCoreData.fetch(ToDoCD.fetchRequest()) as? [ToDoCD] {
            listOfToDo = dataFromCoreData
            tableView.reloadData()
        }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //listOfToDo = createToDo()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listOfToDo.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell..
        let eachToDo = listOfToDo[indexPath.row]
        
        //if it's important then it gets an emoji
        
        if let thereIsDescription = eachToDo.descriptionInCD {
            if eachToDo.importantInCD {
                cell.textLabel?.text = "????" +  thereIsDescription //unwrapping whatev you have in the class (ex: "Learn Swift") and putting it into the cell
            } else {
                cell.textLabel?.text = eachToDo.descriptionInCD
            }
        }
        
        

        return cell
    }
    

     override func tableView (_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //gives a single ToDo
        let eachToDo = listOfToDo[indexPath.row]
        
        performSegue(withIdentifier: "moveToCompletedToDoVC", sender: eachToDo)
    }

    override func viewWillAppear(_ animated: Bool) {
        getToDos()
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let nextAddToDoVC = segue.destination as? AddToDoViewController {
            nextAddToDoVC.previousToDoTVC = self
        }
        if let nextCompletedToDoVC = segue.destination as? CompletedToDoViewController {
            if let choosenToDo = sender as? ToDoCD {
                nextCompletedToDoVC.selectedToDo = choosenToDo
                nextCompletedToDoVC.previoustoDoTVC = self
            }
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }


}

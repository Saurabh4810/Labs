//
//  FoodTableViewController.swift
//  Meal Tracker
//
//  Created by Saurabh Singh on 18/08/25.
//

import UIKit

class FoodTableViewController: UITableViewController {
    
    var meals: [Meal] {
            // Foods for breakfast
        // Foods for breakfast
        let waffles = Food(name: "Waffles", description: "Crispy waffles topped with honey")
        let omelette = Food(name: "Omelette", description: "Cheese and herb omelette")
        let tea = Food(name: "Tea", description: "Warm cup of green tea")
        let breakfast = Meal(name: "Breakfast", food: [waffles, omelette, tea])

        // Foods for lunch
        let burger = Food(name: "Burger", description: "Juicy beef burger with lettuce and tomato")
        let soup = Food(name: "Soup", description: "Creamy tomato soup with croutons")
        let lemonade = Food(name: "Lemonade", description: "Refreshing homemade lemonade")
        let lunch = Meal(name: "Lunch", food: [burger, soup, lemonade])

        // Foods for dinner
        let risotto = Food(name: "Risotto", description: "Creamy mushroom risotto")
        let chicken = Food(name: "Grilled Chicken", description: "Tender grilled chicken breast")
        let cocktail = Food(name: "Cocktail", description: "Refreshing mojito cocktail")
        let dinner = Meal(name: "Dinner", food: [risotto, chicken, cocktail])

            
            return [breakfast, lunch, dinner]
        }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        let meal = meals[section]
        return meal.food.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)
                
        let meal = meals[indexPath.section]
        let foodItem = meal.food[indexPath.row]
                
        var content = cell.defaultContentConfiguration()
        content.text = foodItem.name
        content.secondaryText = foodItem.description
        cell.contentConfiguration = content
        // Configure the cell...

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
 

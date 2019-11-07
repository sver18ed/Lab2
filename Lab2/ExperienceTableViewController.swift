//
//  ExperienceTableViewController.swift
//  Lab2
//
//  Created by Erik Sveningsson on 2019-11-06.
//  Copyright © 2019 Erik Sveningsson. All rights reserved.
//

import UIKit

class ExperienceTableViewController: UITableViewController {
    
    let sections = ["Work", "Education"]
    let items = [["Work 1", "Work 2", "Work 3"], ["Education 1"]]
    let years = [["2013 - 2014", "2014 - 2017", "2017 - 2018"], ["2018 - current"]]
    let images = [["gamecontroller.fill", "car.fill", "burn"], ["book"]]
    
    //var experiences: [[Experience]] = [[]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        for section in 0..<self.sections.count {
        //            var object: [Experience] = []
        //            for item in 0..<self.items[section].count {
        //                let experience = Experience(section: sections[section], item: items[section][item], year: years[section][item], image: images[section][item], description: "default")
        //                object.append(experience)
        //            }
        //            experiences.append(object)
        //            // Uncomment the following line to preserve selection between presentations
        //            // self.clearsSelectionOnViewWillAppear = false
        //
        //            // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        //            // self.navigationItem.rightBarButtonItem = self.editButtonItem
        //        }
        //tableView.reloadData()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return self.sections.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.items[section].count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return self.sections[section]
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as? ExperienceCell {
            
            // Configure the cell...
            
            cell.coverImageView.image = UIImage(systemName: self.images[indexPath.section][indexPath.row])
            cell.titleLabel.text = self.items[indexPath.section][indexPath.row]
            cell.yearLabel.text = self.years[indexPath.section][indexPath.row]
            
            return cell
        }
        return UITableViewCell()
    }
    
    //override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    //self.performSegue(withIdentifier: "toDetailViewSegue", sender: self)
    //}
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as? DetailsViewController
        let indexPathForRow = tableView.indexPathForSelectedRow?.row;
        let indexPathForSection = tableView.indexPathForSelectedRow?.section;
        
        destination?.image = self.images[indexPathForSection!][indexPathForRow!]
        destination?.work = self.items[indexPathForSection!][indexPathForRow!]
        destination?.year = self.years[indexPathForSection!][indexPathForRow!]
        
        //let cellname = tableView.cellForRowAtIndexPath(indexPath!) as! CardTableViewCell;
        //let destinationViewController = segue.detailsViewController
        //destinationViewController.title = cellname.textLabel?.text
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

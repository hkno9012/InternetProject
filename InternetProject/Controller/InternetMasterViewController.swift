//================================================================
//----------------------------------------------------------------
//  InternetMasterViewController.swift
//  InternetProject
//
//  Created by Knott, Hunter on 12/14/18.
//  Copyright © 2018 Knott, Hunter. All rights reserved.
//

import UIKit
//================================================================
public class InternetMasterViewController: UITableViewController
{
    private weak var internetDetail : InternetDetailViewController? = nil
    private lazy var internetTopics : [String] = [String]()
    private lazy var addresses : [String] = [String]()
    //================================================================
    private func setupDetailContents() -> Void
    {
        internetTopics = [
            "Internet definitions ",
            "Standard Seach Engine ",
            "AP CSP ",
            "CTEC ",
            "Social Media "
        ]
        //----------------------------------------------------------------
        addresses = [
            "https://www.google.com",
            "https://www.twitter.com",
            "https://www.youtube.com",
            "https://canyons.instructure.com",
            "https://ctec.canyonsdistrict.org/"
        ]
        //----------------------------------------------------------------
        if let splitView = splitViewController
        {
            let currentControllers = splitView.viewControllers
            internetDetail = currentControllers[0] as? InternetDetailViewController
        }
    }
    //================================================================
    public override func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        //----------------------------------------------------------------
        setupDetailContents()
        self.clearsSelectionOnViewWillAppear = false
        //----------------------------------------------------------------
        if let split = splitViewController
        {
            let controllers = split.viewControllers
            internetDetail = (Controllers[controllers.count-1] as! UINavigationController).topViewController as? InternetDetailViewController
        }
        //----------------------------------------------------------------
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    //================================================================
    // MARK: - Table view data source

    public override func numberOfSections(in tableView: UITableView) -> Int
    {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }
    //================================================================
    public override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
    //================================================================
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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

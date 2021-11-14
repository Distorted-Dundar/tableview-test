//
//  ViewController.swift
//  2tableview
//
//  Created by Brian Flores on 8/31/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Something here")

        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath)
        cell.textLabel?.text = "This is row \(indexPath.row)"
      
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        // Get the index path from the cell that was tapped
        let indexPath = tableView.indexPathForSelectedRow
        
       
        // Get the Row of the Index Path and set as index
        let index = indexPath!.row
        print("-", index)
        // Get in touch with the DetailViewController
        let detailViewController = segue.destination as! DetailViewController
        // Pass on the data to the Detail ViewController by setting it's indexPathRow value
        detailViewController.index = index
    }
    

}


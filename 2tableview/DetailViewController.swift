//
//  DetailViewController.swift
//  2tableview
//
//  Created by Brian Flores on 9/2/21.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var dLabel: UILabel!
    
    var index: Int!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(index)
        dLabel.text = ("You tapped the cell at index \(index ?? 0)")
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

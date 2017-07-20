//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by JOHN KENNY on 19/07/2017.
//  Copyright © 2017 JOHN KENNY. All rights reserved.
//

// creates 5 cell with John

import UIKit

//needed for the tableview
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    //tableview element from the view controller
    @IBOutlet var table: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        table.dataSource = self
        table.delegate = self
    }

    //create 5 rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    //create 5 cells with the string "John"
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "John"
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by JOHN KENNY on 19/07/2017.
//  Copyright © 2017 JOHN KENNY. All rights reserved.
//


import UIKit

//needed for the tableview
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    //emoji array-- emoji keyboard ctrl + cmd + space
    var emojiArray = ["🤢", "😡", "🤡","👎🏾", "💩", "🤥", "😎","💉", "😔", "😘", "😭", "🤝", "✌🏾", "👣","🎃","👊🏿","👴🏼","💍","👫"]

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
        //create a row to match the length of the emoji array
        return emojiArray.count
    }
    
    //create 5 cells with the string "John"
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        //return a cell with each emoji from the array
        cell.textLabel?.text = emojiArray[indexPath.row]
        return cell
    }
    //to sent to next screnn
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "nextscreen", sender: emojiArray[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        let des = segue.destination as! SecondViewController
        
        des.emoji = sender as! String
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


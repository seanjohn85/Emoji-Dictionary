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
    var emojiArray : [Emoji] = []

    //tableview element from the view controller
    @IBOutlet var table: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        emojiArray = generteEmojis()
        
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
        cell.textLabel?.text = emojiArray[indexPath.row].pic
        return cell
    }
    //to sent to next screnn
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "nextscreen", sender: emojiArray[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        let des = segue.destination as! SecondViewController
        
        des.emoji = sender as! Emoji
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func generteEmojis() -> [Emoji]{
        return [Emoji(pic: "🤢", def: "You Sicko", cat: "smily", origin: 2014),
        Emoji(pic: "😡", def: "Angry Aaron", cat: "smily", origin: 2010),
        Emoji(pic: "🤡", def: "I'll be you clown", cat: "smily", origin: 2016),
        Emoji(pic: "👎🏾", def: "Vote No", cat: "hand", origin: 2014),
        Emoji(pic: "👊🏿", def: "PogBoom", cat: "hand", origin: 2014),
        Emoji(pic: "✌🏾", def: "Victory Tour", cat: "hand", origin: 2014),
        Emoji(pic: "💩", def: "I did a Dump", cat: "smily", origin: 2012),
        Emoji(pic: "😭", def: "Crying your head off", cat: "smily", origin: 2013),
        Emoji(pic: "🤥", def: "Telling a few porkies", cat: "smily", origin: 2014),
        Emoji(pic: "😎", def: "Daddy Cool", cat: "smily", origin: 2013),
        Emoji(pic: "💍", def: "Book the church", cat: "objects", origin: 2013),
        Emoji(pic: "💉", def: "Give Blood", cat: "objects", origin: 2010),
        Emoji(pic: "😔", def: "Im so sad", cat: "smily", origin: 2010),
        Emoji(pic: "👴🏼", def: "Pike", cat: "smily", origin: 2015),
        Emoji(pic: "👣", def: "Footprints in the sand", cat: "smily", origin: 2013),
        Emoji(pic: "🤝", def: "Done Deal", cat: "smily", origin: 2014),
        Emoji(pic: "😘", def: "Love U", cat: "smily", origin: 2015),
        Emoji(pic: "👫", def: "Lovers", cat: "objects", origin: 2013),
        Emoji(pic: "🎃", def: "Hollween", cat: "objects", origin: 2010)]
    }
    

}


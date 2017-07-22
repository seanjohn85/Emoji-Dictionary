//
//  SecondViewController.swift
//  Emoji Dictionary
//
//  Created by JOHN KENNY on 22/07/2017.
//  Copyright © 2017 JOHN KENNY. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var emoji = "Noemoji"

    @IBOutlet var def: UILabel!
    @IBOutlet var image: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        image.text = emoji
        
        if emoji == "🤢" {
            def.text = "You Sicko"
        }else if emoji == "😡"{
            def.text = "Angry Aaron"
        }else if emoji == "🤡"{
            def.text = "I'll be you clown"
        }else if emoji == "👎🏾"{
            def.text = "Vote No"
        }else if emoji == "👊🏿"{
            def.text = "PogBoom"
        }else if emoji == "✌🏾"{
            def.text = "Victory Tour"
        }else if emoji == "💩"{
            def.text = "I did a Dump"
        }else if emoji == "😭"{
            def.text = "Crying your head off"
        }else if emoji == "🤥"{
            def.text = "Telling a few porkies"
        }else if emoji == "😎"{
            def.text = "Daddy Cool"
        }else if emoji == "💍"{
            def.text = "Book the church"
        }else if emoji == "💉"{
            def.text = "Give Blood"
        }else if emoji == "😔"{
            def.text = "Im so sad"
        }else if emoji == "👴🏼"{
            def.text = "Pike"
        }else if emoji == "👣"{
            def.text = "Footprints in"
        }else if emoji == "🤝"{
            def.text = "Done Deal"
        }else if emoji == "😘"{
            def.text = "Love U"
        }else if emoji == "👫"{
            def.text = "Lovers"
        }else if emoji == "🎃"{
            def.text = "Hollween"
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

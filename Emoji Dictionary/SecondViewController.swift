//
//  SecondViewController.swift
//  Emoji Dictionary
//
//  Created by JOHN KENNY on 22/07/2017.
//  Copyright © 2017 JOHN KENNY. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var emoji = Emoji(pic: "🤢", def: "You Sicko", cat: "smily", origin: 2014)

  
    @IBOutlet var year: UILabel!
    @IBOutlet var cat: UILabel!
    @IBOutlet var def: UILabel!
    @IBOutlet var image: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        image.text = emoji.pic
        cat.text = emoji.cat
        def.text = emoji.def
        year.text = String(emoji.origin)
        
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

//
//  Emoji.swift
//  Emoji Dictionary
//
//  Created by JOHN KENNY on 23/07/2017.
//  Copyright © 2017 JOHN KENNY. All rights reserved.
//

class Emoji{
    var pic : String = ""
    var def : String = ""
    var cat : String = ""
    var origin = 0
    
    init(pic: String, def: String, cat: String, origin: Int){
        self.pic = pic
        self.def = def
        self.cat = cat
        self.origin = origin
    }
}

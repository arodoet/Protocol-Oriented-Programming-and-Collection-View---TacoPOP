//
//  Taco.swift
//  TacoPOP
//
//  Created by Teodora Knezevic on 3/22/19.
//  Copyright © 2019 Teodora Knezevic. All rights reserved.
//

import Foundation

enum TacoShell:Int {
    case Flour = 1
    case Corn = 2
}
enum TacoProtein:String {
    case Beef = "Beef"
    case Chicken = "Chicken"
    case Brisket = "Brisket"
    case Fish = "Fish"
}
enum TacoCondiment:Int {
    case Loaded = 1
    case Plain = 2
}


//DATA MODEL
struct Taco {
    
    private var _id:Int!
    private var _productName:String!
    private var _shellId:TacoShell!
    private var _proteinId:TacoProtein!
    private var _condimentId:TacoCondiment!
    
    var id:Int {
        return _id
    }
    var productName:String {
        return _productName
    }
    var shellId:TacoShell {
        return _shellId
    }
    var proteinId:TacoProtein {
        return _proteinId
    }
    var condimentId:TacoCondiment {
        return _condimentId
    }
    
    
    init (id:Int, name:String, shellId:Int ,protId:Int, condId:Int){
        
        _id = id
        _productName = name
        
        switch shellId {
        case 2:
            _shellId = TacoShell.Corn
        default:
            _shellId = TacoShell.Flour
        }
        
        switch protId {
        case 2:
            _proteinId = TacoProtein.Chicken
        case 3:
            _proteinId = TacoProtein.Brisket
        case 4:
            _proteinId = TacoProtein.Fish
        default:
            _proteinId = TacoProtein.Beef
        }
        
        switch condId {
        case 2:
            _condimentId = TacoCondiment.Plain
        default:
            _condimentId = TacoCondiment.Loaded
        }
    }
}

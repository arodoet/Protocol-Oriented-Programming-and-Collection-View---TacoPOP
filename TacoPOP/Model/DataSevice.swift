//
//  DataSevice.swift
//  TacoPOP
//
//  Created by Teodora Knezevic on 3/22/19.
//  Copyright © 2019 Teodora Knezevic. All rights reserved.
//

import Foundation

class DataService {    // Singlton
    
    static let instance = DataService()
    
    weak var delegate:DataServiceDelegate?
    
    var tacoArray:Array<Taco> = []
    
    func loadDeliciousTacoData(){
        
        tacoArray.append(Taco(id: 1, name: "Loaded Flour Chicken Taco", shellId: 1, protId: 2, condId: 1))
        tacoArray.append(Taco(id: 2, name: "Loaded Corn Chicken Taco", shellId: 2, protId: 2, condId: 1))
        tacoArray.append(Taco(id: 3, name: "Plain Flour Chicken Taco", shellId: 1, protId: 2, condId: 2))
        tacoArray.append(Taco(id: 4, name: "Plain Corn Chicken Taco", shellId: 2, protId: 2, condId: 2))
        
        tacoArray.append(Taco(id: 5, name: "Loaded Flour Beef Taco", shellId: 1, protId: 1, condId: 1))
        tacoArray.append(Taco(id: 6, name: "Loaded Corn Beef Taco", shellId: 2, protId: 1, condId: 1))
        tacoArray.append(Taco(id: 7, name: "Plain Flour Beef Taco", shellId: 1, protId: 1, condId: 2))
        tacoArray.append(Taco(id: 8, name: "Plain Corn Beef Taco", shellId: 2, protId: 1, condId: 2))
        
        tacoArray.append(Taco(id: 9, name: "Loaded Flour Brisket Taco", shellId: 1, protId: 3, condId: 1))
        tacoArray.append(Taco(id: 10, name: "Loaded Corn Brisket Taco", shellId: 2, protId: 3, condId: 1))
        tacoArray.append(Taco(id: 11, name: "Plain Flour Brisket Taco", shellId: 1, protId: 3, condId: 2))
        tacoArray.append(Taco(id: 12, name: "Plain Corn Brisket Taco", shellId: 2, protId: 3, condId: 2))
        
        tacoArray.append(Taco(id: 13, name: "Loaded Flour Fish Taco", shellId: 1, protId: 4, condId: 1))
        tacoArray.append(Taco(id: 14, name: "Loaded Corn Fish Taco", shellId: 2, protId: 4, condId: 1))
        tacoArray.append(Taco(id: 15, name: "Plain Flour Fish Taco", shellId: 1, protId: 4, condId: 2))
        tacoArray.append(Taco(id: 16, name: "Plain Corn Fish Taco", shellId: 2, protId: 4, condId: 2))
        
        delegate?.deliciousTacoDataLoaded()
    }
}

protocol DataServiceDelegate:class {
    func deliciousTacoDataLoaded()
}

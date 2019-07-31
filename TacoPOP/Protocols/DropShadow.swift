//
//  DropShadow.swift
//  TacoPOP
//
//  Created by Teodora Knezevic on 3/22/19.
//  Copyright © 2019 Teodora Knezevic. All rights reserved.
//

import UIKit

protocol DropShadow {}

extension DropShadow where Self:UIView { //ogranici ekstenziju na odredjen tip
    
    func addDropShadow(){
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.7
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 5
    }
    
}

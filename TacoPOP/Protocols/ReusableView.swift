//
//  ReusableView.swift
//  TacoPOP
//
//  Created by Teodora Knezevic on 3/23/19.
//  Copyright © 2019 Teodora Knezevic. All rights reserved.
//

import UIKit
protocol ReusableView:class {}               //ovaj protokol bice ogranicen samo na klase
extension ReusableView where Self:UIView {   // ogranicen na UIView
    
    static var reuseIdentifier:String{
        return String(describing: self)
    }
}

extension UICollectionViewCell:ReusableView{}

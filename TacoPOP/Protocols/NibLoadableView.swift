//
//  NibLoadableView.swift
//  TacoPOP
//
//  Created by Teodora Knezevic on 3/23/19.
//  Copyright © 2019 Teodora Knezevic. All rights reserved.
//

import UIKit
protocol NibLoadableView:class{}
extension NibLoadableView where Self:UIView{
    
    static var nibName:String{
        return String(describing: self)
    }
}

extension UICollectionViewCell:NibLoadableView{}

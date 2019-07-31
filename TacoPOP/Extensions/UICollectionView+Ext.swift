//
//  UICollectionView+Ext.swift
//  TacoPOP
//
//  Created by Teodora Knezevic on 3/23/19.
//  Copyright © 2019 Teodora Knezevic. All rights reserved.
//

import UIKit

extension UICollectionView{

    func register <T:UICollectionViewCell>(_ :T.Type)  {
        
        let nib = UINib(nibName: T.nibName, bundle: nil)
        register(nib, forCellWithReuseIdentifier: T.reuseIdentifier)
    }
    
    func dequeueReusableCell <T:UICollectionViewCell>(forIndexPath indexPath:IndexPath) -> T {
        
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath) as? T
            else {
            fatalError("Could not dequeue cell with identifier \(T.reuseIdentifier)")
        }
        return cell
    }
}

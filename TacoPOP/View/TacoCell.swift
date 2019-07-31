//
//  TacoCell.swift
//  TacoPOP
//
//  Created by Teodora Knezevic on 3/23/19.
//  Copyright © 2019 Teodora Knezevic. All rights reserved.
//

import UIKit

class TacoCell: UICollectionViewCell, Shakeable {

    @IBOutlet weak var tacoImage:UIImageView!
    @IBOutlet weak var tacoLabel:UILabel!
    
    var taco:Taco!
    
    func configureCell(taco:Taco){
        self.taco = taco
        tacoImage.image = UIImage(named: taco.proteinId.rawValue)
        tacoLabel.text = taco.productName
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()


    }

}

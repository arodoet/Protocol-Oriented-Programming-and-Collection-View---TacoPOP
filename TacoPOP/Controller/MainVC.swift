//
//  MainVC.swift
//  TacoPOP
//
//  Created by Teodora Knezevic on 3/21/19.
//  Copyright © 2019 Teodora Knezevic. All rights reserved.
//

import UIKit

class MainVC: UIViewController, DataServiceDelegate {
    
    @IBOutlet weak var headerView:HeaderView!
    @IBOutlet weak var collectionView:UICollectionView!
    
    var ds:DataService = DataService.instance    // instanca od singltona

    override func viewDidLoad() {
        super.viewDidLoad()
        
        ds.delegate = self   // Ovoj klasi ce biti delegirano od strane klase DataService
        
        ds.loadDeliciousTacoData()
        
        collectionView.dataSource = self
        collectionView.delegate = self

        headerView.addDropShadow()
        
//        //Stari nacin registracije nib-a :
//        let nib = UINib(nibName: "TacoCell", bundle: nil)
//        collectionView.register(nib, forCellWithReuseIdentifier: "TacoCell")
        
        //nov nacin:
        collectionView.register(TacoCell.self)
    }
    
    func deliciousTacoDataLoaded() {  //Ova fja je od naseg protokola DaraServiceDelegate (DELEGATE PATTERN)
        print("Delicious TacoData Loaded!")
    }
}

extension MainVC:UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ds.tacoArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
//        if let  cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TacoCell", for: indexPath) as? TacoCell {
//            cell.configureCell(taco: ds.tacoArray[indexPath.row])
//            return cell
//        }
//        return UICollectionViewCell()
        
        let cell = collectionView.dequeueReusableCell(forIndexPath: indexPath) as TacoCell
        cell.configureCell(taco: ds.tacoArray[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let cell = collectionView.cellForItem(at: indexPath) as? TacoCell {
            cell.shake()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 95, height: 95)
    }
    
}

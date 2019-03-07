//
//  myWishesViewController.swift
//  Gifty
//
//  Created by Other user on 2/10/19.
//  Copyright © 2019 Other user. All rights reserved.
//

import UIKit
var wishArray : ModelArray = ModelArray.init(weArray: [])

class myWishesViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, DataCollection {

    
  //constants
    
  //outlets
    @IBOutlet weak var myWishcollection: UICollectionView!
    

    // actions
    @IBAction func menuBtnPressed(_ sender: UIBarButtonItem) {
        toggleSideMenuView()
        
    }
 // to reload data ater appear again
    override func viewWillAppear(_ animated: Bool) {
        myWishcollection.reloadData()
    }
    
    
    @IBAction func addWishBtnPressed(_ sender: Any) {
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let vc1 = storyboard.instantiateViewController(withIdentifier: "addWishCellViewController")as! addWishCellViewController
                 vc1.initator="vc1"
                 vc1.buttonTitle="Add a wish"
                self.present(vc1, animated: true, completion: nil)
    }
    //  functions
    
    // cell functions
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return wishArray.weArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "wishCell", for: indexPath)  as! myWishesCollectionViewCell
        
        cell.myWishLbl.text=showData(cellRow:indexPath.row)
        cell.index = indexPath
        cell.deleteAndEditDelegate2 = self
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       
    }
    // functions for the delete and edit delegate
    func editCell(index: Int) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc2 = storyboard.instantiateViewController(withIdentifier:"addWishCellViewController") as!addWishCellViewController
        vc2.initator="vc2"
        vc2.buttonTitle="Save"
        vc2.wishTitle = wishArray.weArray[index].weTitle
        vc2.wishDescribtion = wishArray.weArray[index].weDescribtion
        vc2.wishMoreDetails = wishArray.weArray[index].weDetails
        self.present(vc2, animated: true, completion: nil)
        wishArray.weArray.remove(at: index)
        
    }
    
    func deleteCell(index: Int) {
        wishArray.weArray.remove(at: index)
        myWishcollection.reloadData()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myWishcollection.delegate = self
        myWishcollection.dataSource = self
       
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showData(cellRow:Int)->String {
    let totalWish =  wishArray.weArray[cellRow].weTitle + "\n" + wishArray.weArray[cellRow].weDescribtion + "\n" + wishArray.weArray[cellRow].weDetails
        return totalWish
    }

    
}


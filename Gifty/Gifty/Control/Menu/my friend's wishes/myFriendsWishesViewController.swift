//  myFriendsWishesViewController.swift
//  Gifty
//  Created by Other user on 2/12/19.
//  Copyright © 2019 Other user. All rights reserved.


import UIKit

class myFriendsWishesViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
   // outlets
    
    
    @IBOutlet weak var fWishCollection: UICollectionView!
    
    
// actions
    @IBAction func menuBtnPressed(_ sender: UIBarButtonItem) {
       toggleSideMenuView()
    }
    
    
    // function
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "friendWish", for: indexPath) as! friendsWishesCollectionViewCell
        cell.fWishesLbl.text = "Friends Wishes"
        return cell
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fWishCollection.delegate = self
        fWishCollection.dataSource = self
        
    }

}

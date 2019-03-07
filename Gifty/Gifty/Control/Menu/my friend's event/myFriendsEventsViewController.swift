//
//  myFriendsEventsViewController.swift
//  Gifty
//
//  Created by Other user on 2/12/19.
//  Copyright © 2019 Other user. All rights reserved.
//

import UIKit

class myFriendsEventsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
  
    

    
    //outlets
    
    @IBOutlet weak var fEventCollection: UICollectionView!
    
    
    // actions
    
    @IBAction func menuBtnPressed(_ sender: UIBarButtonItem) {
        toggleSideMenuView()
    }
    
    
    
    
    // functions
  

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 11
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "friendEvent", for: indexPath) as! friendsEventCollectionViewCell
        cell.fEventsLbl.text = "Friends Events"
        return cell
    
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        fEventCollection.delegate = self
        fEventCollection.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

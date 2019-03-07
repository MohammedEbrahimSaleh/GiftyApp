//
//  myEventsViewController.swift
//  Gifty
//
//  Created by Other user on 2/12/19.
//  Copyright © 2019 Other user. All rights reserved.
//

import UIKit
var  eventArray : ModelArray = ModelArray.init(weArray: [])
class myEventsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource,DataCollection  {
   // variables
    
    
    
// outlets
    
    @IBOutlet weak var eventsCollection: UICollectionView!
    

    
    //functions
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return eventArray.weArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
     
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "eventView", for: indexPath) as! myEventCollectionViewCell
        
        cell.eventLbl.text=showData(cellRow:indexPath.row)
        cell.index = indexPath
        cell.deleteAndEditDelegate = self
        
        return cell
    }
    
    
    
    
    //actions
    @IBAction func menuBtnPressed(_ sender: UIBarButtonItem) {
        
        toggleSideMenuView()
    }
    
    
    @IBAction func addAnEventBtnPressed(_ sender: Any) {
        
    
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc1 = storyboard.instantiateViewController(withIdentifier:"addEventCellViewController") as!addEventCellViewController
                vc1.buttonTitle="Add event"
                vc1.initator="vc1"
                self.present(vc1, animated: true, completion: nil)
        
        
    }
    
  // functions
    func editCell(index: Int) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc2 = storyboard.instantiateViewController(withIdentifier:"addEventCellViewController") as!addEventCellViewController
        vc2.initator="vc2"
        vc2.buttonTitle="Save"
        vc2.eventTitle = eventArray.weArray[index].weTitle
        vc2.eventDetails = eventArray.weArray[index].weDetails
        vc2.eventDate = eventArray.weArray[index].weDescribtion
        eventArray.weArray.remove(at: index)
        self.present(vc2, animated: true, completion: nil)
        
        
    }
    
    func deleteCell(index: Int) {
        eventArray.weArray.remove(at: index)
        eventsCollection.reloadData()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        eventsCollection.delegate = self
        eventsCollection.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // to reload data ater appear again
    override func viewWillAppear(_ animated: Bool) {
        eventsCollection.reloadData()
    }
    
    func showData(cellRow:Int)->String {
        let totalEvent =  eventArray.weArray[cellRow].weTitle + "\n" + eventArray.weArray[cellRow].weDetails + "\n" + eventArray.weArray[cellRow].weDescribtion
       
        return totalEvent
    }
}

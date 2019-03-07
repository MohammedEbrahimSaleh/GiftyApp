//
//  sideMenuViewController.swift
//  Gifty
//
//  Created by Other user on 2/11/19.
//  Copyright © 2019 Other user. All rights reserved.
//

import UIKit
import QuartzCore

class sideMenuViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as!sideMenuCellTableViewCell
        
        cell.celLbl.text = arr1[indexPath.row]
        cell.celImage.image=UIImage.init(named: arr2[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        var destinationVC: UIViewController!
        var flag = true
        if indexPath.row==0{
            destinationVC = storyboard.instantiateViewController(withIdentifier: "myFriendsWishesViewController") as! myFriendsWishesViewController
        }
        else if indexPath.row==1{
            destinationVC = storyboard.instantiateViewController(withIdentifier: "myFriendsEventsViewController") as! myFriendsEventsViewController
        }
        else if indexPath.row==2{
            destinationVC = storyboard.instantiateViewController(withIdentifier: "myWishesViewController") as! myWishesViewController
        }

        else if indexPath.row==3{
            destinationVC = storyboard.instantiateViewController(withIdentifier: "myEventsViewController") as! myEventsViewController
        }else if indexPath.row==4{
            destinationVC = storyboard.instantiateViewController(withIdentifier: "settingViewController") as! settingViewController
        }else if indexPath.row==5{
            destinationVC = storyboard.instantiateViewController(withIdentifier: "aboutUsViewController") as! aboutUsViewController
        }else if indexPath.row==6{
           flag = false
  /////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            
                         let myAlert = UIAlertController(title: "log out", message: "Do you want to log out ?", preferredStyle: UIAlertControllerStyle.alert)
            let okAction = UIAlertAction(title: "Ok", style: .default){ action in
                 destinationVC = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
                self.present(destinationVC, animated: true, completion: nil)
                
            }
            myAlert.addAction(okAction)

            let cancelAction = UIAlertAction(title: "cancel", style: .cancel){ action in
                
                
            }
            myAlert.addAction(cancelAction)
            self.present(myAlert, animated: true, completion: nil)

        
        }
        if flag == true
        {sideMenuController()?.setContentViewController(destinationVC)}
       
    }
    
    var arr1 = ["My friend's wishs","My friend's events","My wish list","MyEvents","Setting","About us" ,"Log out"]
     var arr2 = ["friend'sWishes","myFriend'sEvents","myWishes","myEvents","setting","aboutUs","logOut"]
    @IBOutlet weak var menuTable: UITableView!
    
    @IBOutlet weak var userNameLbl: UILabel!
    
    @IBOutlet weak var userImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameLbl.text = globalGiftyName
        
        userImage.layer.cornerRadius = 50
        userImage.layer.borderWidth = 5
        userImage.layer.borderColor = UIColor.lightGray.cgColor
        userImage.clipsToBounds = true
        menuTable.dataSource = self
        menuTable.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
}

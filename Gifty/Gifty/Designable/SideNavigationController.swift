//
//  SideNavigationController.swift
//  Gifty
//
//  Created by Other user on 2/10/19.
//  Copyright © 2019 Other user. All rights reserved.
//

import UIKit

class SideNavigationController: ENSideMenuNavigationController
{

    override func viewDidLoad() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let menu = storyboard.instantiateViewController(withIdentifier: "sideMenuViewController") as! sideMenuViewController
        sideMenu = ENSideMenu(sourceView: self.view, menuViewController: menu, menuPosition: ENSideMenuPosition.left)
        sideMenu?.menuWidth = 200
        view.bringSubview(toFront: navigationBar)
        
    }
    
}

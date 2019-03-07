//
//  firstWelcomeScreenViewController.swift
//  Gifty
//
//  Created by Other user on 2/18/19.
//  Copyright © 2019 Other user. All rights reserved.
//

import UIKit

class firstWelcomeScreenViewController: UIViewController {
    // outlets
    @IBOutlet weak var welcomeLbl: UILabel!
    //actions
    
    
    @IBAction func startBtnPressed(_ sender: UIButton) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "demonstrationViewController") as! demonstrationViewController
            self.present(vc, animated: true, completion: nil)
    }
    @IBAction func skipBtnPressed(_ sender: UIButton) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "SideNavigationController") as! SideNavigationController
        self.present(vc, animated: true, completion: nil)
    }
    //constants
    //variables
    var giftyName:String = ""
    //functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLbl.text = "Welcome \(globalGiftyName)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

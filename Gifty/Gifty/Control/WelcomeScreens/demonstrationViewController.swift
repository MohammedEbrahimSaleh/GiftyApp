//
//  demonstrationViewController.swift
//  Gifty
//
//  Created by Other user on 2/18/19.
//  Copyright © 2019 Other user. All rights reserved.
//

import UIKit

class demonstrationViewController: UIViewController, UIScrollViewDelegate {
    // variables
    
    var images: [String] = ["0","1","2","3","4"]
    var describtion : [String] = ["With Gifty you will never have troubles with gifts ever again .\n you and your friends will know just the best gift to get .","No more replicated gifts . \n No more don't know what to get for a dear one or a wife , ahusband or a family memeber or a friend .\n you will know eaxcetly what they need . ","Also you won't miss an event for your friends too as gifty will remind you . ","you will be able to Browse between Amazon and Souq and Jumia to get the best gift delivered for your loved one just press got it and they will know . ","For christmass or Thanks giving for Valantine's day , Birthday or an Annevrsairy or even a pridal shower . \n For all the occasions you and your friends will have here you will find the right gift for the right person ."]
    var frame1 = CGRect(x: 0, y: 0, width: 0, height: 0)
    var frame2 = CGRect(x: 0, y: 0, width: 0, height: 0)
    //constants
    
    
    
    //outlets
    
    @IBOutlet weak var myScrollView: UIScrollView!
    
    @IBOutlet weak var myPageControl: UIPageControl!
    
    
    //actions
    
    
    
    @IBAction func skipBtnPressed(_ sender: UIButton) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "SideNavigationController") as! SideNavigationController
        self.present(vc, animated: true, completion: nil)
        
    }
    
    // view did load
    override func viewDidLoad() {
        super.viewDidLoad()
        myPageControl.numberOfPages = images.count
        for index in 0..<images.count {
            frame1.origin.x = myScrollView.frame.size.width * CGFloat(index)
            frame1.size.height = myScrollView.frame.size.height / 2
            frame1.size.width = myScrollView.frame.size.width
            
            let imgView = UIImageView(frame:frame1)
            imgView.image = UIImage(named: images[index])
            self.myScrollView.addSubview(imgView)
            
            
            
            frame2.origin.x = (myScrollView.frame.size.width * CGFloat(index)) + 20
            frame2.origin.y = myScrollView.frame.size.height / 2
            frame2.size.height = myScrollView.frame.size.height / 2
            frame2.size.width = (myScrollView.frame.size.width) - 50
            
            let desLabel = UILabel(frame: frame2)
            desLabel.textColor = .white
            desLabel.textAlignment = .center
            desLabel.text = describtion[index]
            desLabel.numberOfLines = 10
            self.myScrollView.addSubview(desLabel)
            
            
            
            
        }
        myScrollView.contentSize = CGSize(width: myScrollView.frame.size.width * CGFloat(images.count), height: myScrollView.frame.size.height)
        myScrollView.delegate = self
        
    }
    
    // functions
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pageNumber = myScrollView.contentOffset.x / myScrollView.frame.size.width
        myPageControl.currentPage = Int(pageNumber)
    }

}

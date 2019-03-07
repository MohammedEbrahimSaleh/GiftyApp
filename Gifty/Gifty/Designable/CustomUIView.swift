//
//  CustomUIView.swift
//  Gifty
//
//  Created by Other user on 2/14/19.
//  Copyright © 2019 Other user. All rights reserved.
//

import UIKit

class CustomUIView: UIView {

//    override init(frame: CGRect) {
//        super.init(frame: frame)
//
//        backgroundColor = UIColor.blue
//
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        backgroundColor = UIColor.gray
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        
        backgroundColor = UIColor.clear

    }

}

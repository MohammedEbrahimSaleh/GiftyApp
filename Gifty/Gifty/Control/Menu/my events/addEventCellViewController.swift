//
//  addEventCellViewController.swift
//  Gifty
//
//  Created by Other user on 2/14/19.
//  Copyright © 2019 Other user. All rights reserved.
//

import UIKit

class addEventCellViewController: UIViewController {
    // variables
    private var datePicker:UIDatePicker?
    var eventTitle = ""
    var eventDetails = ""
    var eventDate = ""
    var buttonTitle = ""
    var initator = ""
    // constants
   
    

    // outlets

    @IBOutlet weak var eventTitleTxtField: UITextField!
    
    @IBOutlet weak var eventDetailstxtField: UITextField!
    
    @IBOutlet weak var eventDateTxtField: UITextField!
    // actions
    
    
    @IBOutlet weak var addeditBtn: UIButton!
    
    @IBAction func addMyEventBtnPressed(_ sender: UIButton) {
        let eventTitle=eventTitleTxtField.text!
        let eventDetails=eventDetailstxtField.text!
        let eventDate=eventDateTxtField.text!
        let event : weModel = weModel.init(weTitle: eventTitle, weDescribtion: eventDate, weDetails: eventDetails )
        eventArray.weArray.append(event)
        self.dismiss(animated: true, completion: nil)
       
        
    }
    
    @IBAction func cancelBtnDressed(_ sender: UIButton) {
        let event2 : weModel = weModel.init(weTitle: eventTitle, weDescribtion: eventDate, weDetails: eventDetails )
        if initator=="vc1"
        {}
        else if initator=="vc2"
        {eventArray.weArray.append(event2)}
        
        self.dismiss(animated: true, completion: nil)
        
        
    }
    
    
    // view did load
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        addeditBtn.setTitle(buttonTitle, for: .normal)
        eventTitleTxtField.text=eventTitle
        eventDetailstxtField.text!=eventDetails
        eventDateTxtField.text=eventDate
        
        
        //birth date picker stuff
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        eventDateTxtField.inputView = datePicker
        datePicker?.addTarget(self, action: #selector(addEventCellViewController.dateChanged(datePicker:)), for: .valueChanged)
        
        
        // tab gesture stuff
        let tapGesture = UITapGestureRecognizer(target:self, action: #selector(addEventCellViewController.viewTapped(gestureRecognizer:)))
        view.addGestureRecognizer(tapGesture)
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

//  functions
    
    @objc func dateChanged (datePicker: UIDatePicker){
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/mm/yyyy"
        eventDateTxtField.text = dateFormatter.string(from: datePicker.date)
        
    }
    
    // dismiss when view is tapped
    @objc func viewTapped(gestureRecognizer: UITapGestureRecognizer){
        view.endEditing(true)
    }

}

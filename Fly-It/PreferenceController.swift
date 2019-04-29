//
//  PreferenceController.swift
//  Fly-It
//
//  Created by Bryanza on 19/04/19.
//  Copyright © 2019 Bryanza. All rights reserved.
//

import UIKit
import Firebase

class PreferenceController: UIViewController{
    
    @IBOutlet weak var fashion: UIImageView!
    @IBOutlet weak var food: UIImageView!
    @IBOutlet weak var lifestyle: UIImageView!
    @IBOutlet weak var property: UIImageView!
    
    var fromdesc : String?
    
//    var email : String?
//    var password : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fashionTap = UITapGestureRecognizer(target: self, action: #selector(fashionDetected))
        fashion.isUserInteractionEnabled = true
        fashion.addGestureRecognizer(fashionTap)
        
        let foodTap = UITapGestureRecognizer(target: self, action: #selector(foodDetected))
        food.isUserInteractionEnabled = true
        food.addGestureRecognizer(foodTap)
        
        let lifestyleTap = UITapGestureRecognizer(target: self, action: #selector(lifestyleDetected))
        lifestyle.isUserInteractionEnabled = true
        lifestyle.addGestureRecognizer(lifestyleTap)
        
        let propertyTap = UITapGestureRecognizer(target: self, action: #selector(propertyDetected))
        property.isUserInteractionEnabled = true
        property.addGestureRecognizer(propertyTap)
    
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let destinationVC = segue.destination as? LoginController {
//            destinationVC.surel = email
//            destinationVC.sandi = password
//        }
//    }
    
    @IBAction func backAction(_ sender: Any) {
        if (fromdesc == "Login"){
            self.performSegue(withIdentifier: "backToHome", sender: self)
        }else if (fromdesc == "Register"){
            self.performSegue(withIdentifier: "backToRegis", sender: self)
        }
    }
    
    @IBAction func preferenceAction(_ sender: Any) {
        
        var prefs = ""
        if fashion.alpha == 0.5{
            prefs += "2,"
        }
        if food.alpha == 0.5{
            prefs += "1,"
        }
        if lifestyle.alpha == 0.5{
            prefs += "3,"
        }
        if property.alpha == 0.5{
            prefs += "4,"
        }
        if prefs.count > 1{
            prefs = String(prefs[prefs.index(prefs.startIndex, offsetBy: 0)..<prefs.index(prefs.endIndex, offsetBy: -1)])
        }
        
//        let myRef = self.ref.child("users").child(currentUser.uid).child("prefs")
//        myref.setValue(prefs)
//        self.performSegue(withIdentifier: "prefToHome", sender: self)
        
    }
    
    //Action
    @objc func fashionDetected() {
//        print("Imageview Clicked")
        if fashion.alpha == 0.5{
            fashion.alpha = 1
        }else{
            fashion.alpha = 0.5
        }
    }
    
    @objc func foodDetected() {
        if food.alpha == 0.5{
            food.alpha = 1
        }else{
            food.alpha = 0.5
        }
    }
    
    @objc func lifestyleDetected() {
        if lifestyle.alpha == 0.5{
            lifestyle.alpha = 1
        }else{
            lifestyle.alpha = 0.5
        }
    }
    
    @objc func propertyDetected() {
        if property.alpha == 0.5{
            property.alpha = 1
        }else{
            property.alpha = 0.5
        }
    }
    
}

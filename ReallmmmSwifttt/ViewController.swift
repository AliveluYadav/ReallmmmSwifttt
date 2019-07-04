//
//  ViewController.swift
//  ReallmmmSwifttt
//
//  Created by LetMeCall Corp on 06/12/18.
//  Copyright © 2018 LetMeCall Corp. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

    
    @IBOutlet weak var userTF: UITextField!
    @IBOutlet weak var pswdTF: UITextField!
    var arry = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func clickOnSave(_ sender: Any) {
    
      let mike = Human()
        mike.userName = self.userTF.text!
        mike.password = self.pswdTF.text!
        
        let realm = try! Realm()
        try! realm.write {
            realm.add(mike)
            self.arry.append(self.userTF.text!)
            print("added \(mike.userName) to Realm")
            
           
        }
        
        print("array\(self.arry)")
    }
    
    

}


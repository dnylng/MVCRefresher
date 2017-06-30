//
//  ViewController.swift
//  MVCRefresher
//
//  Created by Danny Luong on 6/30/17.
//  Copyright © 2017 dnylng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fullName: UILabel!
    
//    @IBOutlet weak var rickImage: UIImageView!
    
    let person = Person(first: "Rick", last: "Sanchez")
    
    @IBOutlet weak var renameField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        Example of what not to do in the controller
//        fullName.text = "\(person.firstName) \(person.lastName)"
        
        // Keep data manipulation in the model, not controller
        fullName.text = person.fullName
        
//        Another bad example, manipulating images in VC
//        rickImage.layer.cornerRadius = 5.0
//        rickImage.clipsToBounds = true
//        What you have to do is create custom view class in the view layer
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func renamePressed(_ sender: Any) {
        if let text = renameField.text {
            person.firstName = text
            fullName.text = person.fullName
        }
    }

}


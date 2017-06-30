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
    
    @IBOutlet weak var rickImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let person = Person(first: "Rick", last: "Sanchez")
        
//        Example of what not to do in the controller
//        fullName.text = "\(person.firstName) \(person.lastName)"
        
        // Keep data manipulation in the model, not controller
        fullName.text = person.fullName
        
        rickImage.layer.cornerRadius = 5.0
        rickImage.clipsToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


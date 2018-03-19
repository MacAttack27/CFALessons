//
//  ViewController.swift
//  lessontest
//
//  Created by Mackenzie Sumner on 3/16/18.
//  Copyright © 2018 Mackenzie Sumner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var descLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        titleLabel.text = lessons[myIndex]
        descLabel.text = lessonDesc[myIndex]
        myImageView.image = UIImage(named: lessons[myIndex] + ".png")
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


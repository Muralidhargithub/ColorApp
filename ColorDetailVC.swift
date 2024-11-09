//
//  ColorDetailVC.swift
//  ColorApp
//
//  Created by Muralidhar reddy Kakanuru on 11/9/24.
//

import UIKit

class ColorDetailVC: UIViewController {
    var color:UIColor?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = color ?? .blue
        // Do any additional setup after loading the view.
    }
    
    
    
    
}

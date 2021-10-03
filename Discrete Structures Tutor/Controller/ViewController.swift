//
//  ViewController.swift
//  Discrete Structures Tutor
//
//  Created by Sean Hall on 10/3/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(named: "directed_graph")
        
    }


}


//
//  ViewController.swift
//  Discrete Structures Tutor
//
//  Created by Sean Hall on 10/3/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var learningButton: UIButton!
    @IBOutlet weak var practiceButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(named: "directed_graph")
        
    }


}


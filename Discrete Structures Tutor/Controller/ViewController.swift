//
//  ViewController.swift
//  Discrete Structures Tutor
//
//  Created by Sean Hall on 10/3/21.
//

import UIKit

class ViewController: UIViewController {

    var lessonNumber = 0
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var textBox: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var learningButton: UIButton!
    @IBOutlet weak var practiceButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(named: "au-logo")
        textBox.text = "American University\n\nComputer Science Department\n\nDiscrete Structures\n\nCSC-256\n\nSemester: Fall 2021\n\nDeveloped by: Sean Hall\n\nOverseen by: Dr. Mehdi Owrang"
        
    }

    @IBAction func practiceButtonPressed(_ sender: Any) {
        lessonNumber = 16
        performSegue(withIdentifier: "mainToReview", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let target = segue.destination as? LessonReviewVC {
            target.lessonNumber = lessonNumber
        }
    }
}


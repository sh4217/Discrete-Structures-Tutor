import UIKit

class MidtermVC: UIViewController {

    let topics = [
        "De Morgan's Laws"
    ]
    
    let lessons = [
        "Propositional Logic"
    ]
    
    let questions = [
        "Construct a truth table to demonstrate whether ~(p ∨ q) is logically equivalent to ~p ∧ ~q."
    ]
    
    @IBOutlet weak var topicLabel: UILabel!
    @IBOutlet weak var lessonLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topicLabel.text = "Topic: \(topics[0])"
        lessonLabel.text = "Lesson: \(lessons[0])"
        questionLabel.text = questions[0]
    }

    
}

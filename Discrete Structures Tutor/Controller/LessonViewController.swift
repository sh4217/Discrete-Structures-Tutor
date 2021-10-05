import UIKit

class LessonViewController: UIViewController {

    let questions = [
        "What is a proposition?",
        "A proposition is a sentence that declares a fact that is either true or false.",
    ]
    
    var questionNumber = 0
    
    @IBOutlet weak var textBox: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textBox.text = questions[questionNumber]
    }
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        questionNumber += 1
        if questionNumber < questions.count {
            updateLabel(questionNumber: questionNumber)
        }
    }
    
    func updateLabel(questionNumber: Int) {
        textBox.text = questions[questionNumber]
    }
}


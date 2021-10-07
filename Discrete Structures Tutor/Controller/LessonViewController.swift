import UIKit

class LessonViewController: UIViewController {

    let statements = [
        "What is a proposition?",
        "A proposition is a sentence that declares a fact that is either true or false.",
        "Next statement"
    ]
    
    let questionPositions = [2]
    
    var statementNumber = 0
    var questionNumber = 0
    
    @IBOutlet weak var textBox: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textBox.text = statements[statementNumber]
    }
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        statementNumber += 1
        if statementNumber < statements.count {
            updateLabel(statementNumber: statementNumber)
        }
        if questionPositions.contains(statementNumber) {
            performSegue(withIdentifier: "lessonToQuestion", sender: nil)
        }
    }
    
    func updateLabel(statementNumber: Int) {
        textBox.text = statements[statementNumber]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let target = segue.destination as? QuestionViewController {
            target.statementNumber = statementNumber
            target.questionNumber = questionNumber
        }
    }
}


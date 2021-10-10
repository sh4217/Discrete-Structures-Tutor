import UIKit

class LessonViewController: UIViewController {

    let statements = [
        "What is a proposition?",
        "A proposition is a sentence that declares a fact that is either true or false.",
        "We can assign propositions to variables that allow us to perform operations on them and to connect them with other propositions.",
        "For example, let us represent the proposition “it is raining today” with the variable p.",
        "The logical operator “Not,” or ¬, represents the inverse of the proposition it is placed before.\n\n~p is read as \"not p.\"",
        "Lecture continues"
    ]
    
    let questionPositions = [2, 5]
    
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
        print("statement number: \(statementNumber)")
        if statementNumber < statements.count {
            updateLabel(statementNumber: statementNumber)
        }
        if questionPositions.contains(statementNumber) {
            print("transition from lesson to question")
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


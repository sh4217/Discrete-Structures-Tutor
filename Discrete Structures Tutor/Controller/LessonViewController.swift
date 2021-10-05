import UIKit

class LessonViewController: UIViewController {

    let statements = [
        "What is a proposition?",
        "A proposition is a sentence that declares a fact that is either true or false.",
    ]
    
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
    }
    
    func updateLabel(statementNumber: Int) {
        textBox.text = statements[statementNumber]
    }
}

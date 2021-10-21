import UIKit

class LessonViewController: UIViewController {

    let infoDict = InformationDictionary1()

    var statementNumber = 0
    
    @IBOutlet weak var textBox: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textBox.text = infoDict.lecture[statementNumber]
    }
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        statementNumber += 1

        if statementNumber < infoDict.lecture.count {
            updateLabel(statementNumber: statementNumber)
        } else {
            performSegue(withIdentifier: "lessonToTopics", sender: nil)
        }

    }
    
    
    
    func updateLabel(statementNumber: Int) {
        textBox.text = infoDict.lecture[statementNumber]
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let target = segue.destination as? QuestionViewController {
//            target.statementNumber = statementNumber
//            target.questionNumber = questionNumber
//        }
//    }
}



import UIKit

class QuestionViewController: UIViewController {

    let questions = [
        "Is the following sentence a proposition?\n\nSan Francisco is the capital of California.",
        "Is the following sentence a proposition?\n\nAre pelicans birds?",
        "Let p represent the statement \"The car is red.\"\n\nIs the following an accurate negation of p?\n\n\"The car is blue.\""

    ]
    
    let answers = [true, false, false]
    var correctFlag = false
    
    var statementNumber = 0
    var questionNumber = 0
    
    let statementPosition = [2, 3]
    
    let explanations = [
        """
        Yes. That statement is a proposition, because it is declaring a sentence with a truth value.
        The truth value is false, because the capital of California is Sacramento, not San Francisco.
        """,
        "No. It is a question, not a declarative statement, so it cannot be a proposition.",
        "No. ~p is simply \"The car is not red.\""
    ]
    
    @IBOutlet weak var questionBox: UILabel!
    @IBOutlet weak var answerBox: UILabel!
    
    @IBOutlet weak var yesButton: UIButton!
    @IBOutlet weak var noButton: UIButton!
    @IBOutlet weak var returnButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        correctFlag = false
        questionBox.text = questions[questionNumber]
    }
    
    @IBAction func yesButtonPressed(_ sender: Any) {
        if answers[questionNumber] {
            correctFlag = true
            answerBox.text = explanations[questionNumber]
        }
        else {
            correctFlag = false
            answerBox.text = "Incorrect. Try again."
        }
    }
    
    @IBAction func noButtonPressed(_ sender: Any) {
        if !answers[questionNumber] {
            correctFlag = true
            answerBox.text = explanations[questionNumber]
        }
        else {
            correctFlag = false
            answerBox.text = "Incorrect. Try again."
        }
    }
    
    @IBAction func returnButtonPressed(_ sender: Any) {
        if correctFlag {
            questionNumber += 1
            print("question number: \(questionNumber)")
            if statementPosition.contains(questionNumber) {
                print("transition from question to lesson")
                performSegue(withIdentifier: "questionToLesson", sender: nil)
            } else if questionNumber < questions.count {
                updateLabel(position: questionNumber)
            }
        }
    }
    
    func updateLabel(position: Int) {
        answerBox.text = ""
        questionBox.text = questions[position]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let target = segue.destination as? LessonViewController {
            target.statementNumber = statementNumber
            target.questionNumber = questionNumber
        }
    }
    
    
}

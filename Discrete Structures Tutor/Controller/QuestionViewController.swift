import UIKit

class QuestionViewController: UIViewController {

    let questions = [
        "Is the following sentence a proposition?\n\nSan Francisco is the capital of California."
    ]
    
    let answers = [
        """
        That statement is a proposition, because it is declaring a sentence with a true value.
        The truth value is false, because the capital of California is Sacramento, not San Francisco.
        """,
    ]
    
    @IBOutlet weak var questionBox: UILabel!
    @IBOutlet weak var answerBox: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        questionBox.text = questions[0]
        answerBox.text = answers[0]
        
    }

}

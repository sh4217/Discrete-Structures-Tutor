import UIKit

class LessonOrReviewVC: UIViewController {

    var lessonNumber = 0
    
    @IBOutlet weak var studyButton: UIButton!
    @IBOutlet weak var practiceButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func studyButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "choiceToLesson", sender: nil)
    }
    
    @IBAction func practiceButtonPressed(_ sender: Any) {
        lessonNumber += 8
        performSegue(withIdentifier: "choiceToReview", sender: nil)
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "choiceToTopics", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let target = segue.destination as? LessonViewController {
            target.lessonNumber = lessonNumber
        }
        if let target = segue.destination as? LessonReviewVC {
            target.lessonNumber = lessonNumber
        }
    }
}

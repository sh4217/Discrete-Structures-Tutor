import UIKit

class TopicsViewController: UIViewController {

    var lessonNumber = 0
    
    @IBOutlet weak var backButton: UIButton!
    
    @IBOutlet weak var propLogicButton: UIButton!
    @IBOutlet weak var predLogicButton: UIButton!
    
    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func backButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "topicsToView", sender: nil)
    }
    
    @IBAction func propLogicButtonPressed(_ sender: Any) {
        lessonNumber = 0
        performSegue(withIdentifier: "topicsToLesson", sender: nil)
    }
    
    @IBAction func predLogicButtonPressed(_ sender: Any) {
        lessonNumber = 1
        performSegue(withIdentifier: "topicsToLesson", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let target = segue.destination as? LessonViewController {
            target.lessonNumber = lessonNumber
        }
    }
}

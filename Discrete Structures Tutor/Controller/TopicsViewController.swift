import UIKit

class TopicsViewController: UIViewController {

    var lessonNumber = 0
    
    @IBOutlet weak var backButton: UIButton!
    
    @IBOutlet weak var propLogicButton: UIButton!
    @IBOutlet weak var predLogicButton: UIButton!
    @IBOutlet weak var rulesButton: UIButton!
    @IBOutlet weak var proofsButton: UIButton!
    @IBOutlet weak var countingButton: UIButton!
    @IBOutlet weak var setsButton: UIButton!
    @IBOutlet weak var sequencesButton: UIButton!
    @IBOutlet weak var relationsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func backButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "topicsToView", sender: nil)
    }
    
    @IBAction func propLogicButtonPressed(_ sender: Any) {
        lessonNumber = 0
        performSegue(withIdentifier: "topicsToChoice", sender: nil)
    }
    
    @IBAction func predLogicButtonPressed(_ sender: Any) {
        lessonNumber = 1
        performSegue(withIdentifier: "topicsToChoice", sender: nil)
    }
    
    @IBAction func rulesButtonPressed(_ sender: Any) {
        lessonNumber = 2
        performSegue(withIdentifier: "topicsToChoice", sender: nil)
    }
    
    @IBAction func proofsButtonPressed(_ sender: Any) {
        lessonNumber = 3
        performSegue(withIdentifier: "topicsToChoice", sender: nil)
    }
    
    @IBAction func countingButtonPressed(_ sender: Any) {
        lessonNumber = 4
        performSegue(withIdentifier: "topicsToChoice", sender: nil)
    }
    
    @IBAction func setsButtonPressed(_ sender: Any) {
        lessonNumber = 5
        performSegue(withIdentifier: "topicsToChoice", sender: nil)
    }
    @IBAction func sequencesButtonPressed(_ sender: Any) {
        lessonNumber = 6
        performSegue(withIdentifier: "topicsToChoice", sender: nil)
    }
    
    @IBAction func relationsButtonPressed(_ sender: Any) {
        lessonNumber = 7
        performSegue(withIdentifier: "topicsToChoice", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let target = segue.destination as? LessonOrReviewVC {
            target.lessonNumber = lessonNumber
        }
    }
}

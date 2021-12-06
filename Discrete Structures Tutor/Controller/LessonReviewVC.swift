import UIKit

class LessonReviewVC: UIViewController {

    let infoDict = InformationDictionary2()
    var slideNumber = 0
    var lessonNumber = 0
    
    @IBOutlet weak var textBox: UILabel!
    @IBOutlet weak var previousButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!    
    @IBOutlet weak var backButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateLabel(slideNumber: slideNumber)
    }
    
    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "reviewToChoice", sender: nil)
    }
    
    @IBAction func previousButtonPressed(_ sender: Any) {
        if slideNumber != 0 {
            slideNumber -= 1
            if infoDict.image[lessonNumber][slideNumber] == nil {
                updateLabel(slideNumber: slideNumber)
            } else {
                performSegue(withIdentifier: "reviewNeedsImage", sender: nil)
            }
        }
    }
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        if slideNumber < infoDict.lecture[lessonNumber].count - 1 {
            slideNumber += 1
            if infoDict.image[lessonNumber][slideNumber] == nil {
                updateLabel(slideNumber: slideNumber)
            } else {
                performSegue(withIdentifier: "reviewNeedsImage", sender: nil)
            }
        } else {
            performSegue(withIdentifier: "reviewToChoice", sender: nil)
        }
    }
    
    func updateLabel(slideNumber: Int) {
        textBox.text = infoDict.lecture[lessonNumber][slideNumber]
    }
}

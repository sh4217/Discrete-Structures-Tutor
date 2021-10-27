import UIKit

class LessonViewController: UIViewController {

    let infoDict = InformationDictionary1()
    var slideNumber = 0
    var lessonNumber = 0
    
    @IBOutlet weak var textBox: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateLabel(slideNumber: slideNumber)
    }
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        slideNumber += 1

        if slideNumber < infoDict.lecture[lessonNumber].count {
            if infoDict.image[lessonNumber][slideNumber] == nil {
                updateLabel(slideNumber: slideNumber)
            } else {
                performSegue(withIdentifier: "lessonNeedsImage", sender: nil)
            }
        } else {
            performSegue(withIdentifier: "lessonToTopics", sender: nil)
        }
    }
    
    func updateLabel(slideNumber: Int) {
        textBox.text = infoDict.lecture[lessonNumber][slideNumber]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let target = segue.destination as? LessonWithImageVC {
            target.slideNumber = slideNumber
            target.lessonNumber = lessonNumber
        }
    }
}



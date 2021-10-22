import UIKit

class LessonWithImageVC: UIViewController {

    let infoDict = InformationDictionary1()
    var slideNumber = 0
    
    @IBOutlet weak var lessonLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateLabel(slideNumber: slideNumber)
    }
    
    func updateLabel(slideNumber: Int) {
        lessonLabel.text = infoDict.lecture[slideNumber]
        imageView.image = infoDict.image[slideNumber]
    }
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        slideNumber += 1

        if slideNumber < infoDict.lecture.count {
            if infoDict.image[slideNumber] != nil {
                updateLabel(slideNumber: slideNumber)
            } else {
                performSegue(withIdentifier: "noImageNeeded", sender: nil)
            }
        } else {
            performSegue(withIdentifier: "lessonImageToTopics", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let target = segue.destination as? LessonViewController {
            target.slideNumber = slideNumber
        }
    }
}

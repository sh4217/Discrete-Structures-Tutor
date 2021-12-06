import UIKit

class ReviewWithImageVC: UIViewController {

    let infoDict = InformationDictionary1()
    var slideNumber = 0
    var lessonNumber = 0
    
    @IBOutlet weak var textBox: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var backButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateLabel(slideNumber: slideNumber)
    }

    func updateLabel(slideNumber: Int) {
        textBox.text = infoDict.lecture[lessonNumber][slideNumber]
        imageView.image = infoDict.image[lessonNumber][slideNumber]
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        if lessonNumber == 16 {
            performSegue(withIdentifier: "reviewImageToMain", sender: nil)
        } else {
            performSegue(withIdentifier: "reviewImageToChoice", sender: nil)
        }
    }
    
    @IBAction func previousButtonPressed(_ sender: Any) {
        if slideNumber != 0 {
            slideNumber -= 1
            if infoDict.image[lessonNumber][slideNumber] != nil {
                updateLabel(slideNumber: slideNumber)
            } else {
                performSegue(withIdentifier: "reviewNoImage", sender: nil)
            }
        }
    }
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        if slideNumber < infoDict.lecture[lessonNumber].count - 1 {
            slideNumber += 1
            if infoDict.image[lessonNumber][slideNumber] != nil {
                updateLabel(slideNumber: slideNumber)
            } else {
                performSegue(withIdentifier: "reviewNoImage", sender: nil)
            }
        } else {
            if lessonNumber == 16 {
                performSegue(withIdentifier: "reviewImageToMain", sender: nil)
            } else {
                performSegue(withIdentifier: "reviewImageToChoice", sender: nil)
            }
        }
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let target = segue.destination as? LessonReviewVC {
            target.slideNumber = slideNumber
            target.lessonNumber = lessonNumber
        }
        
        if let target = segue.destination as? LessonOrReviewVC {
            if lessonNumber > 7 {
                lessonNumber -= 8
            }
            target.lessonNumber = lessonNumber
        }
    }
    
}

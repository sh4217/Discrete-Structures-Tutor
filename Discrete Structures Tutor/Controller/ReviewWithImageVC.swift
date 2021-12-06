import UIKit

class ReviewWithImageVC: UIViewController {

    let infoDict = InformationDictionary1()
    var slideNumber = 0
    var lessonNumber = 0
    
    @IBOutlet weak var textBox: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var previousButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateLabel(slideNumber: slideNumber)
    }

    func updateLabel(slideNumber: Int) {
        textBox.text = infoDict.lecture[lessonNumber][slideNumber]
        imageView.image = infoDict.image[lessonNumber][slideNumber]
    }
    
}

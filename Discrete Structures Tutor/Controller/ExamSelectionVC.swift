import UIKit

class ExamSelectionVC: UIViewController {

    @IBOutlet weak var midtermButton: UIButton!
    @IBOutlet weak var finalButton: UIButton!    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }
    
    
}

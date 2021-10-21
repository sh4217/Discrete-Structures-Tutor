import UIKit

class TopicsViewController: UIViewController {

    @IBOutlet weak var backButton: UIButton!
    
    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func backButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "topicsToView", sender: nil)
    }
}

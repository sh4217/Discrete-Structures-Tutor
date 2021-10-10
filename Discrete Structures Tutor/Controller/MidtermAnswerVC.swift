import UIKit

class MidtermAnswerVC: UIViewController {

    let explanations = [
        "Yes. ~(p ∨ q) is logically equivalent to ~p ∧ ~q. As you can see, in the truth table below, the last two columns are identical."
    ]
    
    @IBOutlet weak var explanationLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        explanationLabel.text = explanations[0]
        imageView.image = UIImage(named: "DML1")

    }

}

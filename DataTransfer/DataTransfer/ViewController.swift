

import UIKit

protocol CreateDataToViewControllerProtocol {
    func sendData(name: String, surname: String, age: String, email: String)
}

class ViewController: UIViewController, CreateDataToViewControllerProtocol {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func enterDataButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "toCreateData", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toCreateData" {
            let toVC = segue.destination as! CreateDataVC
            toVC.delegate = self
        }
    }
    
}

extension ViewController {
    
    func sendData(name: String, surname: String, age: String, email: String) {
        nameLabel.text = name
        surnameLabel.text = surname
        ageLabel.text = age
        emailLabel.text = email
    }
}

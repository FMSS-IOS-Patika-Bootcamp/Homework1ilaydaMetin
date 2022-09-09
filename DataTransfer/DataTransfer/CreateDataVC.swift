

import UIKit

class CreateDataVC: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var surnameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    var delegate: CreateDataToViewControllerProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func sendDataButtonTapped(_ sender: Any) {
        delegate?.sendData(name: nameTextField.text!, surname: surnameTextField.text!, age: ageTextField.text!, email: emailTextField.text!)
        dismiss(animated: true)
    }
    
}

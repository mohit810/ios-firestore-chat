
import UIKit
import Firebase

class ChatViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var messageTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.hidesBackButton = true //hides the back button
    }
    
    @IBAction func sendPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func logOutBtn(_ sender: UIBarButtonItem) {
    do {
        try Auth.auth().signOut()
        navigationController?.popToRootViewController(animated: true) //this clears the backstack and lands user on homescreen
    } catch let signOutError as NSError {
        print ("Error signing out: %@", signOutError.localizedDescription)
    }
    }
    
}

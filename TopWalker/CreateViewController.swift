//
//  CreateViewController.swift
//  TopWalker
//
//  Created by Dong Kelly on 5/20/21.
//

import UIKit
import Parse

class CreateViewController: UIViewController, UINavigationControllerDelegate {

    @IBOutlet weak var createPeopleField: UITextField!
    @IBOutlet weak var createSessionIdField: UITextField!
    @IBOutlet weak var createDurationField: UITextField!
    
    @IBOutlet weak var joinSessionIdField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onCreateButton(_ sender: Any) {
        let session = PFObject(className: "Sessions")
        
        session["id"] = 1
        session["people"] = 10
        session["duration"] = 1
        session["owner"] = PFUser.current()!
        
        session.saveInBackground { success, error in
            if success {
                print("saved")
            } else {
                print("error")
            }
        }
    }
    
    @IBAction func onJoinButton(_ sender: Any) {
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

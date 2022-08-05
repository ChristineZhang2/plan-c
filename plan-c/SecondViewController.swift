//
//  SecondViewController.swift
//  plan-c
//
//  Created by Christine Zhang on 8/4/22.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var lblName: UILabel!
    
    var data = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()
        lblName.text = data
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onePressed(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://abortionhotline.org")! as URL, options: [:], completionHandler: nil)
        
    }
    
    @IBAction func twoPressed(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://www.heyjane.co/resources#talk-textlines")! as URL, options: [:], completionHandler: nil)
    }
   
    @IBAction func threePressed(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://www.abortionclinics.com")! as URL, options: [:], completionHandler: nil)
    }
   
    @IBAction func fourPressed(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://prochoice.org/patients/naf-hotline/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func fivePressed(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://forwardtogether.org")! as URL, options: [:], completionHandler: nil)
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

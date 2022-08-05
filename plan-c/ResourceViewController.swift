//
//  ResourceViewController.swift
//  plan-c
//
//  Created by Christine Zhang on 8/4/22.
//

import UIKit

class ResourceViewController: UIViewController {

    @IBOutlet weak var txtData: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onClickSubmit(_ sender: Any) {
        let dataOne = txtData.text
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        vc.data = dataOne!
        self.navigationController?.pushViewController(vc, animated: true)
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

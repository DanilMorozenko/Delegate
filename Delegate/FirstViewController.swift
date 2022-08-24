//
//  ViewController.swift
//  Delegate
//
//  Created by brubru on 24.08.2022.
//

import UIKit

protocol SecondViewControllerDelegate {
    func setSmile(for label: String)
}

class FirstViewController: UIViewController {
    
    @IBOutlet var smileLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func goButon(_ sender: Any) {
    performSegue(withIdentifier: "buttonGo", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let secondVC = segue.destination as? SecondViewController else { return }
        secondVC.labelText = smileLabel.text
        secondVC.delegate = self
    }
}

   
   

extension FirstViewController : SecondViewControllerDelegate {
    func setSmile(for label: String) {
        smileLabel.text = label
    }
    
    
}

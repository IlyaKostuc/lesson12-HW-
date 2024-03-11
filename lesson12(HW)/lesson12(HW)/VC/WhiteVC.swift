//
//  WhiteVC.swift
//  lesson12(HW)
//
//  Created by Maxim Fedoseenko on 11.03.2024.
//

import UIKit

class WhiteVC: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnNext(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let grayVC = storyboard.instantiateViewController(withIdentifier: "GrayVC") as? GrayVC else { return }
        navigationController?.pushViewController(grayVC, animated: true)
        grayVC.delegate = self
    }
        
}

extension WhiteVC: GrayVCDelegate {
    func send(text1: String, text2: String, text3: String) {
        lbl.text = "\(text1) \(text2) \(text3)"
    }
    
    
}

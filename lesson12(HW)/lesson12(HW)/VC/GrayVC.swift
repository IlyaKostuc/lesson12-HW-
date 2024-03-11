//
//  GrayVC.swift
//  lesson12(HW)
//
//  Created by Maxim Fedoseenko on 11.03.2024.
//

import UIKit

protocol GrayVCDelegate: AnyObject {
    func send(text1: String, text2: String, text3: String)
}

class GrayVC: UIViewController {

    weak var delegate: GrayVCDelegate?
    
    @IBOutlet weak var textFieldFirst: UITextField!
    @IBOutlet weak var textFieldSecond: UITextField!
    @IBOutlet weak var textFieldThird: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnSave(_ sender: UIButton) {
        guard let text1 = textFieldFirst.text, let text2 = textFieldSecond.text, let text3 = textFieldThird.text, let delegate = delegate else { return }
        delegate.send(text1: text1, text2: text2, text3: text3)
        navigationController?.popViewController(animated: true)
    }
    

}

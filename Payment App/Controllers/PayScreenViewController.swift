//
//  PayScreenViewController.swift
//  Payment App
//
//  Created by Thotsana Mabotsa on 2020/11/05.
//

import UIKit

class PayScreenViewController: UIViewController {
	
	@IBOutlet weak var personNameToPay: UILabel!
	
	@IBOutlet weak var fromAccountTextField: UITextField!
	
	@IBOutlet weak var amountTextField: UITextField!
	
	@IBOutlet weak var disclaimerButton: UIButton!
	
		
	
	var name = ""
	var accountNumber = ""
	var amount = ""
		
    override func viewDidLoad() {
        super.viewDidLoad()
		personNameToPay.text = name
		Styles.styleButtons(disclaimerButton)
		Styles.styleTextFields(fromAccountTextField)
		Styles.styleTextFields(amountTextField)
    }
	
	@IBAction func processPayment(_ sender: Any) {
		
		accountNumber = fromAccountTextField.text ?? "-"
		amount = amountTextField.text ?? "0"
		
		let vc = storyboard?.instantiateViewController(withIdentifier: "PaymentCompleteViewController") as! PaymentCompleteViewController
		vc.title = "PayCompleteFragment"
		vc.name = name
		vc.accountNumber = accountNumber
		vc.amount = amount
		self.navigationController?.pushViewController(vc, animated: true)
		print("thotsana mabotsa")
	}
	

}

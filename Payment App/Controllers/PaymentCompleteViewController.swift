//
//  PaymentCompleteViewController.swift
//  Payment App
//
//  Created by Thotsana Mabotsa on 2020/11/05.
//

import UIKit

class PaymentCompleteViewController: UIViewController {
	
	@IBOutlet weak var paidNameLabel: UILabel!
	
	@IBOutlet weak var paidFromAccountNumberLabel: UILabel!
	
	@IBOutlet weak var paidAmountLabel: UILabel!
	
	var name = ""
	var accountNumber = ""
	var amount = ""
		
    override func viewDidLoad() {
        super.viewDidLoad()
		paidNameLabel.text = name
		paidFromAccountNumberLabel.text = accountNumber
		paidAmountLabel.text = amount
    }
	
	@IBAction func homePage(_ sender: Any) {
		self.navigationController?.popToRootViewController(animated: true)
	}
	
}

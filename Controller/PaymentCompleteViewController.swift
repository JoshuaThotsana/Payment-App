//
//  PaymentCompleteViewController.swift
//  Payment App
//
//  Created by Thotsana Mabotsa on 2020/11/03.
//

import UIKit

class PaymentCompleteViewController: UIViewController {
	
	@IBOutlet weak var nameLabel: UILabel!
	
	@IBOutlet weak var accountNumberLabel: UILabel!
	
	@IBOutlet weak var amountLabel: UILabel!
	
	var name = ""
	var accountNumber = ""
	var amout = ""
	
    override func viewDidLoad() {
        super.viewDidLoad()
		nameLabel.text = name
		accountNumberLabel.text = accountNumber
		amountLabel.text = amout
    }
    
}

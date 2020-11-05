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
	
	var name = ""
	
    override func viewDidLoad() {
        super.viewDidLoad()
		personNameToPay.text = name
    }

}

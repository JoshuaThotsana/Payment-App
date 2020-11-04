//
//  PaymentViewController.swift
//  Payment App
//
//  Created by Thotsana Mabotsa on 2020/11/03.
//

import UIKit

class PaymentViewController: UIViewController {

	@IBOutlet weak var nameLabel: UILabel!
	
	var name = ""
	
    override func viewDidLoad() {
        super.viewDidLoad()
		nameLabel.text = name		
    }
    

}

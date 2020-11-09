//
//  HomeViewController.swift
//  Payment App
//
//  Created by Thotsana Mabotsa on 2020/11/05.
//

import UIKit

class HomeViewController: UIViewController {
	
	@IBOutlet weak var viewBalanceButton: UIButton!
	
	@IBOutlet weak var paySomeoneButton: UIButton!
	
    override func viewDidLoad() {
        super.viewDidLoad()
		Styles.styleButtons(viewBalanceButton)
		Styles.styleButtons(paySomeoneButton)
		self.navigationController?.navigationBar.backIndicatorImage = UIImage(systemName: "arrow.left")
		self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(systemName: "arrow.left")
    }

}

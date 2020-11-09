//
//  Styles.swift
//  Payment App
//
//  Created by Thotsana Mabotsa on 2020/11/05.
//

import UIKit

class Styles: UIViewController {
	static func styleTextFields(_ textField: UITextField) {
		textField.borderStyle = .roundedRect
	}
	
	static func styleButtons(_ button: UIButton) {
		button.layer.cornerRadius = 10.0
	}
}

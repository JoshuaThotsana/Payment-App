//
//  AccountCell.swift
//  Payment App
//
//  Created by Thotsana Mabotsa on 2020/11/02.
//

import UIKit

class AccountCell: UITableViewCell {

	@IBOutlet weak var accountName: UILabel!
	@IBOutlet weak var accountNumber: UILabel!
	@IBOutlet weak var accountBalance: UILabel!
	
	func setAccount(account: Account) {
		accountName.text = account.accountName
		accountNumber.text = account.accountNumber
		accountBalance.text = account.balance
	}
	
}

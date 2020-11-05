//
//  AccountTableViewCell.swift
//  Payment App
//
//  Created by Thotsana Mabotsa on 2020/11/05.
//

import UIKit

class AccountTableViewCell: UITableViewCell {

	@IBOutlet weak var accountNameLabel: UILabel!
	@IBOutlet weak var accountNumberLabel: UILabel!
	@IBOutlet weak var accountBalanceLabel: UILabel!
	
	func setAccount(account: Account) {
		accountNameLabel.text = account.accountName
		accountNumberLabel.text = account.accountNumber
		accountBalanceLabel.text = account.accountBalance
	}
}

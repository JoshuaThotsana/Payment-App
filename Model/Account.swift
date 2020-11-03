//
//  Accounts.swift
//  Payment App
//
//  Created by Thotsana Mabotsa on 2020/11/02.
//

import Foundation

class Account {
	var accountName: String
	var accountNumber: String
	var balance: String
	
	init(accountName: String, accountNumber: String, balance: String) {
		self.accountName = accountName
		self.accountNumber = accountNumber
		self.balance = balance
	}
}

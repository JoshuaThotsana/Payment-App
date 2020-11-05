//
//  AccountListViewController.swift
//  Payment App
//
//  Created by Thotsana Mabotsa on 2020/11/05.
//

import UIKit

class AccountListViewController: UIViewController {
	
	var accounts: [Account] = [
		Account(accountName: "First account", accountNumber: "123-456-789", accountBalance: "1 000.00"),
		Account(accountName: "Second account", accountNumber: "987-654-321", accountBalance: "-100.00"),
	]

    override func viewDidLoad() {
        super.viewDidLoad()
		
    }
    
}

extension AccountListViewController: UITableViewDataSource, UITableViewDelegate {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		accounts.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let account = accounts[indexPath.row]
		let cell = tableView.dequeueReusableCell(withIdentifier: "AccountTableViewCell") as! AccountTableViewCell
		cell.setAccount(account: account)
		return cell
	}
}

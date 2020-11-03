//
//  AccountList.swift
//  Payment App
//
//  Created by Thotsana Mabotsa on 2020/11/02.
//

import UIKit

class AccountList: UIViewController {
	
	@IBOutlet weak var tableView: UITableView!
	
	
	var accounts: [Account] = [Account(accountName: "First account", accountNumber: "123-456-789", balance: "1 000.00"),
							   Account(accountName: "Second account", accountNumber: "987-654-321", balance: "-100.00")]

    override func viewDidLoad() {
        super.viewDidLoad()
		
		tableView.delegate = self
		tableView.dataSource = self
    }
    
}

extension AccountList: UITableViewDataSource, UITableViewDelegate {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return accounts.count
	}
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let account = accounts[indexPath.row]
		
		let cell = tableView.dequeueReusableCell(withIdentifier: "AccountCell") as! AccountCell
		
		cell.setAccount(account: account)
		
		return cell
	}
}

//
//  PeopleList.swift
//  Payment App
//
//  Created by Thotsana Mabotsa on 2020/11/02.
//

import UIKit

class PeopleList: UIViewController {
	
	@IBOutlet weak var tableView: UITableView!
	
	var names: [People] = [People(name: "Albatruna"),
							People(name: "Alligamish"),
							People(name: "Buffaros"),
							People(name: "Chimadger"),
							People(name: "Chimpow"),
							People(name: "Demonkey"),
							People(name: "Doomling"),
							People(name: "Fiepecker"),
							People(name: "Gothyte"),
							People(name: "Parsnipe"),]

    override func viewDidLoad() {
        super.viewDidLoad()
		tableView.delegate = self
		tableView.dataSource = self
    }

}

extension PeopleList: UITableViewDataSource, UITableViewDelegate {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return names.count
	}
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let name = names[indexPath.row]
		
		let cell = tableView.dequeueReusableCell(withIdentifier: "PeopleCell") as! PeopleCell
		
		cell.setPeople(people: name)
		
		return cell
		
	}
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		let viewController = storyboard?.instantiateViewController(withIdentifier: "PaymentViewController") as? PaymentViewController
		viewController?.name = names[indexPath.row].name
		viewController?.title = "PayFragment"
		viewController?.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "NEXT", style: .plain, target: self, action: #selector(processPayment))
		self.navigationController?.pushViewController(viewController!, animated: true)
	}
	
	@objc private func processPayment() {
		
	}
}

//
//  PeopleListViewController.swift
//  Payment App
//
//  Created by Thotsana Mabotsa on 2020/11/05.
//

import UIKit

class PeopleListViewController: UIViewController {
	
	@IBOutlet weak var tableView: UITableView!
	
	
	var peopleNames: [People] = [
		People(name: "Albatruna"),
		People(name: "Alligamish"),
		People(name: "Buffaros"),
		People(name: "Chimadger"),
		People(name: "Chimpow"),
		People(name: "Demonkey"),
		People(name: "Doomling"),
		People(name: "Fiepecker"),
		People(name: "Gothyte"),
		People(name: "Parsnipe"),
		People(name: "Thotsana"),
		People(name: "Gift"),
	]

    override func viewDidLoad() {
        super.viewDidLoad()
		self.tableView.separatorStyle = .none
    }
}

extension PeopleListViewController: UITableViewDataSource, UITableViewDelegate {
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		peopleNames.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let people = peopleNames[indexPath.row]
		let cell = tableView.dequeueReusableCell(withIdentifier: "PeopleTableViewCell") as! PeopleTableViewCell
		cell.setPeople(people: people)
		return cell
	}
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		let viewController = storyboard?.instantiateViewController(withIdentifier: "PayScreenViewController") as! PayScreenViewController
		viewController.name = peopleNames[indexPath.row].name
		self.navigationController?.pushViewController(viewController, animated: true)
	}
	
}

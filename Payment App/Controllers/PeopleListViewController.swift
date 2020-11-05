//
//  PeopleListViewController.swift
//  Payment App
//
//  Created by Thotsana Mabotsa on 2020/11/05.
//

import UIKit

class PeopleListViewController: UIViewController {
	
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
	]

    override func viewDidLoad() {
        super.viewDidLoad()
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
	
}

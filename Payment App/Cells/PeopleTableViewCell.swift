//
//  PeopleTableViewCell.swift
//  Payment App
//
//  Created by Thotsana Mabotsa on 2020/11/05.
//

import UIKit

class PeopleTableViewCell: UITableViewCell {

	@IBOutlet weak var nameToPay: UILabel!
	
	func setPeople(people: People) {
		nameToPay.text = people.name
	}
	
}

//
//  PeopleCell.swift
//  Payment App
//
//  Created by Thotsana Mabotsa on 2020/11/02.
//

import UIKit

class PeopleCell: UITableViewCell {

	@IBOutlet weak var peopleName: UILabel!
	
	func setPeople(people: People) {
		peopleName.text = people.name
	}
}

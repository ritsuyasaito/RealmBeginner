//
//  Diary.swift
//  RealmBeginner
//
//  Created by 齋藤律哉 on 2020/05/23.
//  Copyright © 2020 ritsuya. All rights reserved.
//


import UIKit
import RealmSwift

class Diary: Object {
    @objc dynamic var title = ""
    @objc dynamic var memo = ""
}


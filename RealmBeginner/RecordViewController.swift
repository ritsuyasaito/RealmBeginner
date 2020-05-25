//
//  RecordViewController.swift
//  RealmBeginner
//
//  Created by 齋藤律哉 on 2020/05/23.
//  Copyright © 2020 ritsuya. All rights reserved.
//

import UIKit
import RealmSwift

class RecordViewController: UIViewController {
    
    @IBOutlet var titleTextField: UITextField!
    @IBOutlet var memoTextView: UITextView!
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(Realm.Configuration.defaultConfiguration.fileURL!)

    }
    
    @IBAction func record() {
        let realm = try! Realm()
        let diary = Diary()
        diary.title = titleTextField.text!
        diary.memo = memoTextView.text!
       
        // データをRealmに持っていく
        try! realm.write {
            realm.add(diary)
        }
    }
    

}

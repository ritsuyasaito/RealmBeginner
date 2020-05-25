//
//  ViewController.swift
//  RealmBeginner
//
//  Created by 齋藤律哉 on 2020/05/23.
//  Copyright © 2020 ritsuya. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var diaryList: Results<Diary>!
    
    @IBOutlet var diaryListTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let realm = try! Realm()
        
        diaryList = realm.objects(Diary.self)
        print(diaryList)
        
        
        //print(diaryList[0].memo)
        //print(diaryList[1].title)
        
        diaryListTableView.dataSource = self
        diaryListTableView.delegate = self
        diaryListTableView.reloadData()
        
        let nib = UINib(nibName: "DiaryTableViewCell", bundle: Bundle.main)
        diaryListTableView.register(nib, forCellReuseIdentifier: "cell")
        
        diaryListTableView.rowHeight = 150
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        diaryList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
 
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! DiaryTableViewCell
        cell.titleLabel.text = diaryList[indexPath.row].title
        cell.memoTextView.text = diaryList[indexPath.row].memo
        return cell
    }
    


}


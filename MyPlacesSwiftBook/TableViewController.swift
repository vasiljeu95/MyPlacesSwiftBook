//
//  TableViewController.swift
//  MyPlacesSwiftBook
//
//  Created by Stepan Vasiljeu on 7/14/19.
//  Copyright © 2019 Stepan Vasiljeu. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    let restaurantNames = ["Балкан Гриль", "Дастархан", "Бочка", "Вкусные истории", "Индокитай", "Классик", "Шок", "Bonsai", "Burger Heroes", "Kitchen", "Love&Life", "Morris Pub", "Sherlock Holmes", "Speak Easy", "X.O"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellIdentifier", for: indexPath)
        // Добавление ячейки Тайтл которой зависит от индекса массива
        cell.textLabel?.text = restaurantNames[indexPath.row]
        // Добавляем изображение в ячейку
        cell.imageView?.image = UIImage(named: restaurantNames[indexPath.row])
        // Делаем изображение круглым
        cell.imageView?.layer.cornerRadius = cell.frame.size.height / 2
        cell.imageView?.clipsToBounds = true
        
        return cell
    }
    
    // MARK: - TableViewDelegate
    // Устанавливаем высоту ячейки
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

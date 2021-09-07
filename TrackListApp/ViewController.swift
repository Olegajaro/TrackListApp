//
//  ViewController.swift
//  TrackListApp
//
//  Created by Олег Федоров on 07.09.2021.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController {
    // количество строк в секции
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    // метод отвечает за настройку контента в ячейке
    // внутри создаем ячейку через метод dequeueReusableCell для tableView
    // dequeueReusableCell создание объекта внеочередной переиспользуемой ячейки
    // в параметре indexPath содержится индекс вновь создаваемой ячейки
    // в методе реализуем отображения текста в ячейке (то как это делается, уже не используется)
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = "Cell index \(indexPath.row)"
        
        return cell
    }
}

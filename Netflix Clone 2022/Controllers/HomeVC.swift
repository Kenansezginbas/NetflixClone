//
//  HomeViewVC.swift
//  Netflix Clone 2022
//
//  Created by Kenan Developer on 29.11.2022.
//

import UIKit

class HomeViewVC: UIViewController {
   
    private let homeFeedTable: UITableView = {
        let table = UITableView()
        table.register(CollectionViewTableViewCell.self, forCellReuseIdentifier: "cell")
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTable()
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableFrame()
  }
    
    private func tableFrame() {
        homeFeedTable.frame = view.bounds
    }
    
    private func configureTable() {
        view.backgroundColor = .black
        view.addSubview(homeFeedTable)
        homeFeedTable.delegate   = self
        homeFeedTable.dataSource = self
        
    }
}

extension HomeViewVC: UITableViewDelegate, UITableViewDataSource {
    
    //Item sayisi
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    //Item detay (Title, image vs)
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell                =  tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text    = "Hello World \(indexPath.row)"
        cell.backgroundColor    = .red
        return cell
    }
    
    //Satir height
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        200
    }
    
    //section oncesi bosluk
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        40
    }
    
}

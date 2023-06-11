//
//  ViewController.swift
//  previews
//
//  Created by Gabriel Castillo Serafim on 9/6/23.
//

import UIKit
import SwiftUI

class MyViewController: UIViewController {
    
    // MARK: - View LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    // MARK: - UI Properties
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.dataSource = self
        tableView.register(CustomCell.self, forCellReuseIdentifier: CustomCell.reuseID)
        return tableView
    }()
    
    // MARK: - Methods

    func setupUI() {
        
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}

// MARK: - UITableViewDataSource
extension MyViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomCell.reuseID, for: indexPath) as? CustomCell ?? CustomCell()
        
        cell.configure()
        
        return cell
    }
}

// MARK: - Preview

struct UIViewRepresentable: UIViewControllerRepresentable {
    
    typealias UIViewControllerType = MyViewController
    
    func makeUIViewController(context: Context) -> MyViewController {
        MyViewController()
    }
    
    func updateUIViewController(_ uiViewController: MyViewController, context: Context) {
        // ..
    }
}

struct ViewController_Previews: PreviewProvider {
    
    static var previews: some View {
        UIViewRepresentable()
    }
}

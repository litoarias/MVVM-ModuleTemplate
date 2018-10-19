//  
//  MainView.swift
//  TestMVVMContracts
//
//  Created by MPU8D0000001 on 17/10/2018.
//  Copyright © 2018 MPU8D0000001. All rights reserved.
//

import UIKit


/*
 * THIS IS YOUR APPDELEGATE IMPLEMENTATION
 
 * func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
 * let window = UIWindow(frame: UIScreen.main.bounds)
 * let mainView = ___VARIABLE_productName:identifier___View.create(viewModel: ___VARIABLE_productName:identifier___ViewModel(dataSource: ___VARIABLE_productName:identifier___DataSource()))
 * window.rootViewController = UINavigationController(rootViewController: mainView)
 * window.makeKeyAndVisible()
 * self.window = window
 * return true
 }
 */

final class ___FILEBASENAMEASIDENTIFIER___: UIViewController {
    
    // MARK: -  Outlets
    
    // 👀 Please connect me‼️ 👀
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    
    // MARK: -  Properties
    private var viewModel: ___VARIABLE_productName:identifier___ViewModel!
    
    
    // MARK: -  Constructor    
    static func create(viewModel: ___VARIABLE_productName:identifier___ViewModel) -> ___VARIABLE_productName:identifier___View {
        let storyboard = UIStoryboard(name: "___VARIABLE_productName:identifier___View", bundle: Bundle(for: ___VARIABLE_productName:identifier___View.self))
        let vc = storyboard.instantiateInitialViewController() as! ___VARIABLE_productName:identifier___View
        vc.viewModel = viewModel
        viewModel.view = vc
        return vc
    }
    
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "___VARIABLE_productName:identifier___"
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: NSStringFromClass(UITableViewCell.self))
        viewModel.didLoadData()
        activityIndicator.startAnimating()
    }
    
}


// MARK: - ___VARIABLE_productName:identifier___ViewModeltoViewContract

extension ___VARIABLE_productName:identifier___View: ___VARIABLE_productName:identifier___ViewModelOutputContract {
    
    // All data is clear, refresh table
    func bootstrap() {
        self.tableView.reloadData()
        activityIndicator.stopAnimating()
    }
}


// MARK: - UITableViewDelegate, UITableViewDataSource

extension ___VARIABLE_productName:identifier___View: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel.sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.sections[section].rows.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return viewModel.sections[section].name
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NSStringFromClass(UITableViewCell.self), for: indexPath)
        let test = viewModel.sections[indexPath.section].rows[indexPath.row]
        cell.textLabel?.text = test.name
        cell.detailTextLabel?.text = test.email
        return cell
    }
    
}

//  ___FILEHEADER___

import UIKit


/*
 THIS IS YOUR APPDELEGATE IMPLEMENTATION
 
 func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
 let window = UIWindow(frame: UIScreen.main.bounds)
 window.rootViewController = UINavigationController(rootViewController: ___FILEBASENAMEASIDENTIFIER___.create(model: ___VARIABLE_productName:identifier___ViewModel(dataSource: ___VARIABLE_productName:identifier___DataSource())))
 window.makeKeyAndVisible()
 self.window = window
 return true
 }
 
 */

class ___FILEBASENAMEASIDENTIFIER___: UIViewController {

    // Please connect me!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    private var model: ___VARIABLE_productName:identifier___ViewModelType!
    static func create(model: ___VARIABLE_productName:identifier___ViewModelType) -> ___FILEBASENAMEASIDENTIFIER___ {
        let storyboard = UIStoryboard(name: "___FILEBASENAMEASIDENTIFIER___", bundle: Bundle(for: ___FILEBASENAMEASIDENTIFIER___.self))
        let vc = storyboard.instantiateInitialViewController() as! ___FILEBASENAMEASIDENTIFIER___
        vc.model = model
        return vc
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "___VARIABLE_productName:identifier___"
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
        model.delegate = self
        model.bootstrap()
    }
    
}

extension ___FILEBASENAMEASIDENTIFIER___: ViewModelDelegate {
    
    func willLoadData() {
        activityIndicator?.startAnimating()
    }
    
    func didLoadData() {
        tableView.reloadData()
        activityIndicator?.stopAnimating()
    }
    
}

extension ___FILEBASENAMEASIDENTIFIER___: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return model.sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.sections[section].rows.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return model.sections[section].name
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let ___VARIABLE_productName:identifier___ = model.sections[indexPath.section].rows[indexPath.row]
        cell.textLabel?.text = ___VARIABLE_productName:identifier___.name
        cell.detailTextLabel?.text = ___VARIABLE_productName:identifier___.email
        return cell
    }
    
}



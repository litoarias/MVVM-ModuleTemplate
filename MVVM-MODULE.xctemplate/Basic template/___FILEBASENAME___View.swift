//  ___FILEHEADER___

import UIKit


/*
 * THIS IS YOUR APPDELEGATE IMPLEMENTATION
 
 * func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
 * let window = UIWindow(frame: UIScreen.main.bounds)
 * let mainView = MainView.create(viewModel: MainViewModel(dataSource: MainDataSource()))
 * window.rootViewController = UINavigationController(rootViewController: mainView)
 * window.makeKeyAndVisible()
 * self.window = window
 * return true
 }
 */

final class ___FILEBASENAMEASIDENTIFIER___: UIViewController {
    
    // MARK: -  Outlets
    
    // MARK: -  Properties
    private var viewModel: ___VARIABLE_productName:identifier___ViewModel!
    
    
    // MARK: -  Constructor    
    static func create(viewModel: ___VARIABLE_productName:identifier___ViewModel) -> ___VARIABLE_productName:identifier___View {
        let storyboard = UIStoryboard(name: "___VARIABLE_productName:identifier___View", bundle: Bundle(for: ___VARIABLE_productName:identifier___View.self))
        let vc = storyboard.instantiateInitialViewController() as! ___VARIABLE_productName:identifier___View
        vc.viewModel = viewModel
        viewModel.view = vc
        viewModel.dataSource?.viewModel = viewModel
        return vc
    }
    
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "___VARIABLE_productName:identifier___"
    }
    
}


// MARK: - ___VARIABLE_productName:identifier___ViewModeltoViewContract

extension ___VARIABLE_productName:identifier___View: ___VARIABLE_productName:identifier___ViewModelToViewContract { }


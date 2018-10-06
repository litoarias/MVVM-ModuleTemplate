//  ___FILEHEADER___

import UIKit


/*
 THIS IS YOUR APPDELEGATE IMPLEMENTATION
 
 func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
 let window = UIWindow(frame: UIScreen.main.bounds)
 window.rootViewController = UINavigationController(rootViewController: ___FILEBASENAMEASIDENTIFIER___.create(model: ___VARIABLE_productName:identifier___ViewModel()))
 window.makeKeyAndVisible()
 self.window = window
 return true
 }
 
 */

class ___FILEBASENAMEASIDENTIFIER___: UIViewController {
    
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
        model.delegate = self
        model.bootstrap()
    }
    
}

extension ___FILEBASENAMEASIDENTIFIER___: ViewModelDelegate {
    
    func willLoadData() {
    }
    
    func didLoadData() {
    }
    
}




import UIKit
import AppCenter
import AppCenterDistribute
import AppCenterCrashes
import AppCenterAnalytics
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate
{
    //a8f3727a-0ed3-45df-b27f-5093ed777ca6
    static var entries: FileEntryStore = FileEntryStore()
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

      
        
        

        AppCenter.start(withAppSecret: "be17a075-6ad8-44af-9bab-58037e555397", services: [Analytics.self, Crashes.self , Distribute.self])

        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
    }

    func applicationWillTerminate(_ application: UIApplication) {
    }
}

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let feedVC = FeedViewController()
        let profileVC = ProfileViewController()
        
        
        let tabBarController = UITabBarController.init()
        
        let feedNav = UINavigationController(rootViewController: feedVC)
        
        
        let image = UIImage.init(systemName: "chart.bar.doc.horizontal.fill")
        let selectedImage = UIImage.init(systemName: "chart.bar.doc.horizontal")
        
        feedNav.tabBarItem = UITabBarItem.init(title: "Feed", image: image, selectedImage: selectedImage)
        
        let profileNav = UINavigationController(rootViewController: profileVC)
        
        let image2 = UIImage.init(systemName: "person.fill")
        let selectedImage2 = UIImage(systemName: "person.crop.circle.fill")
        profileNav.tabBarItem = UITabBarItem.init(title: "Profile", image: image2, selectedImage: selectedImage2)
        
        
        tabBarController.viewControllers = [feedNav, profileNav]
        
        window = UIWindow.init(windowScene: windowScene)
        
        window?.rootViewController = tabBarController
        
        window?.makeKeyAndVisible()

        
    }

    func sceneDidDisconnect(_ scene: UIScene) {

    }

    func sceneDidBecomeActive(_ scene: UIScene) {

    }

    func sceneWillResignActive(_ scene: UIScene) {

    }

    func sceneWillEnterForeground(_ scene: UIScene) {

    }

    func sceneDidEnterBackground(_ scene: UIScene) {

    }


}


import UIKit

class ProfileViewController: UIViewController {
    
    var profileHeaderView = ProfileHeaderView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setupConstraints()

    }
    
    override func viewWillLayoutSubviews() {
        
        super.viewWillLayoutSubviews()
        
        profileHeaderView.frame = view.bounds

        
    }
    
    func setupViews() {
        
        title = "Profile"
        profileHeaderView.backgroundColor = .lightGray
        
        view.addSubview(profileHeaderView)
  
        }
        
    
    }
    
    func setupConstraints() {
        
}

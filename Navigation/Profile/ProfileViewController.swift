import UIKit

class ProfileViewController: UIViewController {
    
    var profileHeaderView = ProfileHeaderView()
    var actionButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setupConstraints()

    }

    
    func setupViews() {
        
        title = "Profile"
        view.backgroundColor = .systemGray6
        profileHeaderView.backgroundColor = .systemGray3
        
        view.addSubview(profileHeaderView)
        
        actionButton = UIButton()
        actionButton.setTitle("Action", for: .normal)
        actionButton.backgroundColor = .systemBlue
        actionButton.setTitleColor(.white, for: .normal)
        actionButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(actionButton)
        
    }
    
    
    func setupConstraints() {
        
        profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
        
        let safeArea = view.safeAreaLayoutGuide
        
        NSLayoutConstraint.activate([
            
            profileHeaderView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor),
            profileHeaderView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor),
            profileHeaderView.topAnchor.constraint(equalTo: safeArea.topAnchor),
            profileHeaderView.heightAnchor.constraint(equalToConstant: 220),
            
            
            actionButton.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor),
            actionButton.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor),
            actionButton.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor)
            
        ])
    }
    
}

import UIKit

class ProfileViewController: UIViewController {
    
    var profileHeaderView = ProfileHeaderView()
    
    private lazy var actionButton: UIButton = {
        
        let button = UIButton()
        button.setTitle("Action", for: .normal)
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
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

import UIKit

class FeedViewController: UIViewController {
    
    var post: Post? {
        didSet {
            self.title = post?.title
        }
    }
    
    lazy var postButton: UIButton = {
        let button = UIButton(frame: CGRect.init(x: 0, y: 0, width: 300, height: 60))
        button.setTitle("Open Post", for: .normal)
        button.addTarget(self, action: #selector(showPostScreen), for: .touchUpInside)
        button.backgroundColor = .systemPink
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setupConstraints()
    }
    
    func setupViews() {
        
        let barButtonItem = UIBarButtonItem.init(title: "Info", style: .plain, target: self, action: #selector(showInfoScreen))
        
        navigationItem.rightBarButtonItem = barButtonItem
        
        view.backgroundColor = .orange
        view.addSubview(postButton)
    }
    
    func setupConstraints() {
        postButton.center = view.center
    }
    
    @objc func showInfoScreen() {
        
        let infoVC = InfoViewController.init()
        
        self.navigationController?.pushViewController(infoVC, animated: true)
    }
    
    @objc func showPostScreen() {
        let postVC = PostViewController.init()
        
        self.navigationController?.pushViewController(postVC, animated: true)
    }
    
    
}

class InfoViewController: UIViewController {
    
    lazy var alertButton: UIButton = {
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 300, height: 60))
        button.setTitle("Alert", for: .normal)
        button.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
        button.backgroundColor = .red
        return button
        
    }()
    
    @objc func showAlert() {
        print("Show Alert")
        
        let alertController = UIAlertController.init(title: "Title", message: "Message", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Ok", style: .default)
        
        alertController.addAction(okAction)
        
        self.present(alertController, animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        
        setupViews()
        setupConstraints()
    }
    
    func setupViews() {
  
        view.addSubview(alertButton)
    }
    
    func setupConstraints() {
        
        alertButton.center = view.center
    }
    
    
    
}

class ProfileViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
    }
    
}

class PostViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .brown
    }
    
}





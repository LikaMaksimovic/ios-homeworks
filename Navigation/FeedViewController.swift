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

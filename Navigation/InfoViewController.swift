import UIKit

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


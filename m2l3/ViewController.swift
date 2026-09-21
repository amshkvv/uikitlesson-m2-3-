import UIKit

class ViewController: UIViewController {
    

    var imageView : UIImageView = {
//        let image = UIImageView()
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.image = .image
        $0.contentMode = .scaleToFill
        $0.layer.cornerRadius = 30
        $0.clipsToBounds = true
        
        return $0
    }(UIImageView())
    
    
    var nameLabel : UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "User Name"
        $0.font = UIFont.systemFont(ofSize: 22, weight: .black)
        $0.textAlignment = .left
        
        return $0
    }(UILabel())
    
    var ageLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "20 years"
        $0.font = UIFont.systemFont(ofSize: 18)
        $0.textAlignment = .left
        
        return $0
    }(UILabel())
    
    var aboutLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "About"
        $0.font = UIFont.systemFont(ofSize:16, weight: .black)
        $0.textAlignment = .left
        
        return $0
    }(UILabel())
    
    var contentLabel : UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam"
        $0.font = UIFont.systemFont(ofSize: 17)
        $0.textAlignment = .left
        $0.numberOfLines = 0
        
        return $0
    }(UILabel())
    
    
    lazy var actionSettings : UIAction = UIAction { _ in
        let settingView = SettingsViewContoller()
        
        self.navigationController?.pushViewController(settingView, animated: true)
        
    }

    lazy var btn : UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.setTitle("Настройки", for: .normal)
        $0.backgroundColor = UIColor(red: 0x22/255, green: 0xA2/255, blue: 0x5C/255, alpha: 1.0)
        $0.layer.cornerRadius = 20
        $0.setTitleColor(.white, for: .normal)
        return $0
    }(UIButton(primaryAction: actionSettings))
    
    
    @objc
    func setSettingBtn(){
        let settingView = SettingsViewContoller()
        
        self.navigationController?.pushViewController(settingView, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Главная"
        
        
        
        
        view.addSubview(imageView)
        view.addSubview(nameLabel)
        view.addSubview(ageLabel)
        view.addSubview(aboutLabel)
        view.addSubview(contentLabel)
        view.addSubview(btn)

        //bnt action setting
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "gearshape"), style: .plain, target: self, action: #selector(setSettingBtn))
        
        
        
        NSLayoutConstraint.activate([
            
            //image
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -258),
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            imageView.heightAnchor.constraint(equalToConstant: 110),
            
            // label name
            nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 150),
            nameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -120),
            nameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 35),
            
            //label age
            ageLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 150),
            ageLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -120),
            ageLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 5),
            
            //about
            aboutLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            aboutLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -120),
            aboutLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 40),
            
            //content label
            contentLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            contentLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            contentLabel.topAnchor.constraint(equalTo: aboutLabel.bottomAnchor, constant: 3),
            contentLabel.heightAnchor.constraint(equalToConstant: 100),
            
            //button
            btn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            btn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            btn.topAnchor.constraint(equalTo: contentLabel.bottomAnchor, constant: 50),
            btn.heightAnchor.constraint(equalToConstant: 50)
            
        ])
        
        
    }
    
}

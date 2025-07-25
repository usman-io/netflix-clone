import UIKit


class HeroHeaderUIView : UIView {
    
    private let playButton : UIButton = {
        let button = UIButton()
        button.setTitle("Play", for: .normal)
        button.backgroundColor = .systemRed
        button.layer.cornerRadius = 5
        button.layer.masksToBounds = true
        button.addTarget(self, action: #selector(didTapPlayButton), for: .touchUpInside)
        return button
    }()

    private let downloadButton : UIButton = {
        let button = UIButton()
        button.setTitle("Download", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.systemRed, for: .normal)
        button.layer.cornerRadius = 5
        button.layer.masksToBounds = true
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.systemRed.cgColor
        button.addTarget(self, action: #selector(didTapDownloadButton), for: .touchUpInside)
        return button
    }()

    private let heroImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "breakingbad")
        return imageView
    }()
    

    override func layoutSubviews() {
        super.layoutSubviews()
        heroImageView.frame = bounds
    }   
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBackground
        addSubview(heroImageView)
        addSubview(playButton)
        addGradient()
        addSubview(downloadButton)
        applyConstraints()
    }

    private func applyConstraints() {
        playButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            playButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            playButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -120),
            playButton.widthAnchor.constraint(equalToConstant: 100),
            playButton.heightAnchor.constraint(equalToConstant: 50),
        ])
        heroImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            heroImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            heroImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            heroImageView.topAnchor.constraint(equalTo: topAnchor),
            heroImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
        downloadButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            downloadButton.leadingAnchor.constraint(equalTo: playButton.trailingAnchor, constant: 140),
            downloadButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -120),
            downloadButton.widthAnchor.constraint(equalToConstant: 100),
            downloadButton.heightAnchor.constraint(equalToConstant: 50),
        ])
    }

    private func addGradient() {
        let gradient = CAGradientLayer()
        gradient.colors = [
            UIColor.clear.cgColor,
            UIColor.black.cgColor
        ]
        gradient.locations = [0, 1]
        gradient.frame = bounds
        layer.addSublayer(gradient)
    }
    
    required init?(coder: NSCoder) {    
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc private func didTapPlayButton() {
        print("Play button tapped")
    }
    
    @objc private func didTapDownloadButton() {
        print("Download button tapped")
    }
}

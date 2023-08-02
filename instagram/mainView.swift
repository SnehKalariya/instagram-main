//
//  ViewController.swift
//  instagram
//
//  Created by R82 on 24/07/23.
//

import UIKit

class mainView: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
   
    var array = ["a","h","e"]
    
    @IBOutlet weak var cvForPost: UICollectionView!
    @IBOutlet weak var cvForStory: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == cvForStory{
            let cell = cvForStory.dequeueReusableCell(withReuseIdentifier: "cellForStory", for: indexPath) as! CollectionViewCellForStory
            cell.storyImage.layer.cornerRadius = 40
            return cell
        }
            let cells = cvForPost.dequeueReusableCell(withReuseIdentifier: "cellForPost", for: indexPath) as! CollectionViewCellForPost
            return cells
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == cvForStory{
            return CGSize(width: 99, height: 130)
        }
        return CGSize(width: 392, height: 542)
    }
    

//    class CollectionViewCellForStory : UICollectionViewCell {
//        var titleLabel: UILabel = {
//            let label = UILabel()
//            label.translatesAutoresizingMaskIntoConstraints = false
//            label.textAlignment = .center
//            label.textColor = .black
//            return label
//        }()
//
//        override init(frame: CGRect) {
//            super.init(frame: frame)
//            setupViews()
//        }
//
//        required init?(coder aDecoder: NSCoder) {
//            super.init(coder: aDecoder)
//            setupViews()
//        }
//
//        private func setupViews() {
//            addSubview(titleLabel)
//
//            NSLayoutConstraint.activate([
//                titleLabel.topAnchor.constraint(equalTo: topAnchor),
//                titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
//                titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
//                titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor)
//            ])
//        }
//    }

}


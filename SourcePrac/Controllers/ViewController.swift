//
//  ViewController.swift
//  SourcePrac
//
//  Created by Chun-Li Cheng on 2022/6/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var memeTableView: UITableView!
    private var listData: MemeData?
//    {
//        didSet {
//            DispatchQueue.main.async { self.memeTableView.reloadData() }
//        }
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        APICaller.shared.retrieveMemeData { memeData in
            self.listData = memeData
            DispatchQueue.main.async { self.memeTableView.reloadData() }
        }
        
//        APICaller.shared.retrieveGeneric { result in
//            switch result {
//            case let .success(memeData):
//                self.listData = memeData
//            case let .failure(err):
//                print(err)
//            }
//        }

        
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView,
                   heightForRowAt indexPath: IndexPath) -> CGFloat {
        180
    }
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "\(MemeTableViewCell.self)") as? MemeTableViewCell,
              let url = URL(string: listData?.image ?? "")
        else { return UITableViewCell() }
        
//        guard let url = URL(string: listData?.image ?? "") else {
//            return UITableViewCell()
//        }
        
        do {
            let imageData = try Data(contentsOf: url)
            cell.memeImageView.image = UIImage(data: imageData)
        }
        catch {
            print(error.localizedDescription)
        }
        
        cell.captionLabel.text = listData?.caption
        
//        cell.memeImageView.image = UIImage(systemName: "square.and.arrow.up.circle")
//        cell.captionLabel.text = "square.and.arrow.up.circle"
        return cell
    }
    
    
}

extension ViewController: UITableViewDelegate {
//    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
//        180
//    }
}

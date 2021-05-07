//
//  HomeViewController.swift
//  Week1_hw
//
//  Created by kong on 2021/04/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    private var friendList:[FriendDataModel] = []
    @IBOutlet weak var friendListTableview: UITableView!
    @IBOutlet weak var headerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        friendListTableview.delegate = self
        friendListTableview.dataSource = self
        setFriendList()
    }
    
    //    @IBAction func profileButtonClicked(_ sender: Any) {
    //
    //                guard let profileVC = self.storyboard?.instantiateViewController(identifier: "ProfileViewController") as? ProfileViewController else { return }
    //
    //        profileVC.modalPresentationStyle = .fullScreen
    //                self.present(profileVC, animated: true, completion: nil)
    //
    //    }
    
    func setFriendList()
    {
        friendList.append(contentsOf: [
            FriendDataModel(imageName: "profileImage1",
                            name: "안솝트",
                            state: "배고파요"),
            
            FriendDataModel(imageName: "profileImage2",
                            name: "최솝트",
                            state: "피곤해요"),
            
            FriendDataModel(imageName: "profileImage3",
                            name: "정솝트",
                            state: "시험언제끝나죠?"),
            
            FriendDataModel(imageName: "profileImage4",
                            name: "이솝트",
                            state: "ㅠㅠㅠㅠ"),
            
            FriendDataModel(imageName: "profileImage5",
                            name: "유솝트",
                            state: "나는 상태메세지!"),
            
            FriendDataModel(imageName: "profileImage6",
                            name: "박솝트",
                            state: "원하는대로 바꿔보세요 ^_^"),
            
            FriendDataModel(imageName: "profileImage7",
                            name: "최솝트",
                            state: "넘 덥다.."),
            
            FriendDataModel(imageName: "profileImage8",
                            name: "원솝트",
                            state: "배고파요"),
            
            FriendDataModel(imageName: "profileImage9",
                            name: "투솝트",
                            state: "내꿈은 대나무부자"),
            
            FriendDataModel(imageName: "profileImage10",
                            name: "권솝트",
                            state: "걱정말라구!")
            
        ])
    }
}

extension HomeViewController : UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    
}

extension HomeViewController : UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return headerView
    }
    
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FriendListTableViewCell", for: indexPath) as? FriendListTableViewCell else { return UITableViewCell() }
        
        cell.friendName.text = friendList[indexPath.row].name
        cell.friendImage.image = friendList[indexPath.row].image
        cell.friendState.text = friendList[indexPath.row].state
        
        return cell
        
    
    
}

}

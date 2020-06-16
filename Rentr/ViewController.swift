//
//  ViewController.swift
//  Rentr
//
//  Created by Scott Kerkove on 6/3/20.
//  Copyright © 2020 Scott Kerkove. All rights reserved.
//

import UIKit
import SwiftGifOrigin
import FBSDKLoginKit


class ViewController: UIViewController, LoginButtonDelegate {

    

    

    @IBOutlet weak var cloudView: UIImageView!
    @IBOutlet weak var buildingView: UIImageView!
    @IBOutlet weak var bottomView: UIView!
    let loginButton = FBLoginButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setBackground()
        loginButton.delegate = self

    }
    func setBackground() {
        cloudView.image = UIImage.gif(url: "https://i.makeagif.com/media/4-05-2016/NpqycF.gif")
        buildingView.image = UIImage(named: "buildings2")
        bottomView.addSubview(loginButton)
        loginButton.translatesAutoresizingMaskIntoConstraints = false


        loginButton.centerYAnchor.constraint(equalTo: bottomView.centerYAnchor).isActive = true
        loginButton.centerXAnchor.constraint(equalTo: bottomView.centerXAnchor).isActive = true
    }
    func loginButtonDidLogOut(_ loginButton: FBLoginButton) {
        
    }
    func loginButton(_ loginButton: FBLoginButton, didCompleteWith result: LoginManagerLoginResult?, error: Error?) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "LandingPageViewController") as! LandingPageViewController
        navigationController?.pushViewController(vc, animated: true)
    }


}



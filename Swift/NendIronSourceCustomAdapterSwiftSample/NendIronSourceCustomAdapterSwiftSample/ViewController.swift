//
//  ViewController.swift
//  NendIronSourceCustomAdapterSwiftSample
//
//  Copyright(c) FAN Communications, Inc. All Rights Reserved
//

import UIKit
import Foundation
import ObjectiveC.runtime
import AppTrackingTransparency

let APPKEY = "YOUR_APP_KEY"

class ViewController: UIViewController, ISImpressionDataDelegate {
    
    //MARK: IBOutlets
    @IBOutlet weak var showRVButton: UIButton!
    @IBOutlet weak var showISButton: UIButton!
    @IBOutlet weak var versionLabel: UILabel!
    
    //MARK: IBOutlets Actions
    @IBAction func showRVButton(_ sender: Any) {
        IronSource.showRewardedVideo(with: self)
    }
    
    @IBAction func showISButtonAction(_ sender: Any) {
        IronSource.showInterstitial(with: self)
    }
    
    @IBAction func loadISButtonAction(_ sender: Any) {
        IronSource.loadInterstitial()
    }
    
    var rvPlacementInfo: ISPlacementInfo!
    
    //MARK: ViewLifecycle Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.versionLabel.text = String(format: "%@%@", "sdk version: ", IronSource.sdkVersion())
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if #available(iOS 14, *) {
            usingATTConsentDialog()
        } else {
            self.setupIronSourceSdk()
        }
    }
    
    //MARK: Private Functions
    @available(iOS 14, *)
    private func usingATTConsentDialog() {
        DispatchQueue.main.async {
            if (ATTrackingManager.trackingAuthorizationStatus == .notDetermined) {
                ATTrackingManager.requestTrackingAuthorization { (status) in
                    switch (status) {
                    case.authorized: fallthrough
                    case.denied: fallthrough
                    case.notDetermined: fallthrough
                    case.restricted: fallthrough
                    default:
                        break
                    }
                    self.setupIronSourceSdk()
                }
            } else {
                self.setupIronSourceSdk()
            }
        }
    }
    
    func setupIronSourceSdk() {
        IronSource.setLevelPlayRewardedVideoDelegate(self)
        IronSource.setLevelPlayInterstitialDelegate(self)
        IronSource.add(self)
        
        IronSource.initWithAppKey(APPKEY)
    }
    
    func logFunctionName(string: String = #function) {
        print("Nend ironSource custom adapter Swift Demo App: " + string)
    }
    
    //MARK: ISImpressionData Functions
    func impressionDataDidSucceed(_ impressionData: ISImpressionData!) {
        logFunctionName(string: #function + String(describing: impressionData))
    }
}
    
extension ViewController : LevelPlayRewardedVideoDelegate, LevelPlayInterstitialDelegate {
    //MARK: LevelPlayRewardedVideoDelegate Functions
    /**
     Called after a rewarded video has changed its availability to true.
     @param adInfo The info of the ad.
     */
    func hasAvailableAd(with adInfo: ISAdInfo!) {
        showRVButton.isEnabled = true
        logFunctionName(string: #function)
    }
    
    /**
     Called after a rewarded video has changed its availability to false.
     */
    func hasNoAvailableAd() {
        logFunctionName()
    }
    
    //MARK: LevelPlayRewardedVideoBaseDelegate Functions
    /**
     Called after a rewarded video has been viewed completely and the user is eligible for a reward.
     @param placementInfo An object that contains the placement's reward name and amount.
     @param adInfo The info of the ad.
     */
    func didReceiveReward(forPlacement placementInfo: ISPlacementInfo!, with adInfo: ISAdInfo!) {
        rvPlacementInfo = placementInfo
        logFunctionName(string: #function + String(describing: placementInfo.self))
    }
    
    /**
     Called after a rewarded video has been clicked.
     @param placementInfo An object that contains the placement's reward name and amount.
     @param adInfo The info of the ad.
     */
    func didClick(_ placementInfo: ISPlacementInfo!, with adInfo: ISAdInfo!) {
        logFunctionName(string: #function + String(describing: placementInfo.self))
    }
    
    //MARK: Common LevelPlayRewardedVideoBaseDelegate and LevelPlayInterstitialDelegate Functions
    /**
     Called after a rewarded video has been dismissed.
     Called after an interstitial has been dismissed.
     @param adInfo The info of the ad.
     */
    func didClose(with adInfo: ISAdInfo!) {
        logFunctionName(string: #function)
        if (adInfo.ad_unit == "rewarded_video") {
            print("rewarded_video")
            let message = "You have been rewarded " + rvPlacementInfo.rewardName! + ": \(String(describing: rvPlacementInfo.rewardAmount!))"
            let action = UIAlertAction.init(title: "OK", style: .cancel)
            let alert = UIAlertController.init(title:"Video Reward",
                                               message: message,
                                               preferredStyle: .alert)
            alert.addAction(action)
            self.present(alert, animated: true)
        } else if (adInfo.ad_unit == "interstitial"){
            print("interstitial")
        } else {
            print("other format")
        }
    }
    
    /**
     Called after a rewarded video has been opened.
     Called after an interstitial has been opened.
     @param adInfo The info of the ad.
     */
    func didOpen(with adInfo: ISAdInfo!) {
        logFunctionName(string: #function)
        if (adInfo.ad_unit == "rewarded_video") {
            print("rewarded_video")
        } else if (adInfo.ad_unit == "interstitial"){
            print("interstitial")
        } else {
            print("other format")
        }
    }
    
    /**
     Called after a rewarded video has attempted to show but failed.
     Called after an interstitial has attempted to show but failed.
     @param error The reason for the error
     @param adInfo The info of the ad.
     */
    func didFailToShowWithError(_ error: Error!, andAdInfo adInfo: ISAdInfo!) {
        logFunctionName(string: #function + String(describing: error.self))
        if (adInfo.ad_unit == "rewarded_video") {
            print("rewarded_video")
        } else if (adInfo.ad_unit == "interstitial"){
            showISButton.isEnabled = false
            print("interstitial")
        } else {
            print("other format")
        }
        
    }
    
    //MARK: LevelPlayInterstitialDelegate Functions
    /**
     Called after an interstitial has been clicked.
     @param adInfo The info of the ad.
     */
    func didClick(with adInfo: ISAdInfo!) {
        logFunctionName(string: #function)
    }
    
    /**
     Called after an interstitial has been loaded
     @param adInfo The info of the ad.
     */
    func didLoad(with adInfo: ISAdInfo!) {
        showISButton.isEnabled = true
        logFunctionName(string: #function)
    }
    
    /**
     Called after an interstitial has attempted to load but failed.
     @param error The reason for the error
     */
    func didFailToLoadWithError(_ error: Error!) {
        showISButton.isEnabled = false
        logFunctionName(string: #function)
    }
    
    /**
     Called after an interstitial has been displayed on the screen.
     @param adInfo The info of the ad.
     */
    func didShow(with adInfo: ISAdInfo!) {
        logFunctionName(string: #function)
    }
}

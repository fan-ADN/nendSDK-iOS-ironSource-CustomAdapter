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

class ViewController: UIViewController, ISRewardedVideoDelegate, ISInterstitialDelegate, ISImpressionDataDelegate {
    
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
        self.versionLabel.text =  String(format: "%@%@", "sdk version: ", IronSource.sdkVersion());
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
        IronSource.setRewardedVideoDelegate(self)
        IronSource.setInterstitialDelegate(self)
        IronSource.add(self)
        
        IronSource.initWithAppKey(APPKEY)
    }
    
    func logFunctionName(string: String = #function) {
        print("Nend ironSource custom adapter Swift Demo App: "+string)
    }
    
    //MARK: ISInterstitialDelegate Functions
    /**
     Called after an interstitial has been clicked.
     */
    public func didClickInterstitial() {
        logFunctionName()
    }
    
    /**
     Called after an interstitial has attempted to show but failed.
     
     @param error The reason for the error
     */
    public func interstitialDidFailToShowWithError(_ error: Error!) {
        showISButton.isEnabled=false
        logFunctionName(string: String(describing: error.self))
    }
    
    /**
     Called after an interstitial has been displayed on the screen.
     */
    public func interstitialDidShow() {
        logFunctionName()
    }
    
    /**
     Called after an interstitial has been dismissed.
     */
    public func interstitialDidClose() {
        logFunctionName()
    }
    
    /**
     Called after an interstitial has been opened.
     */
    public func interstitialDidOpen() {
        logFunctionName()
    }
    
    /**
     Called after an interstitial has attempted to load but failed.
     
     @param error The reason for the error
     */
    public func interstitialDidFailToLoadWithError(_ error: Error!) {
        showISButton.isEnabled=false
        logFunctionName(string: #function+String(describing: error.self))
    }
    
    /**
     Called after an interstitial has been loaded
     */
    public func interstitialDidLoad() {
        showISButton.isEnabled=true
        logFunctionName()
    }
    
    
    //MARK: ISRewardedVideoDelegate Functions
    /**
     Called after a rewarded video has changed its availability.
     
     @param available The new rewarded video availability. YES if available and ready to be shown, NO otherwise.
     */
    public func rewardedVideoHasChangedAvailability(_ available: Bool) {
        showRVButton.isEnabled=available
        logFunctionName(string: #function+String(available.self))
    }
    
    /**
     Called after a rewarded video has finished playing.
     */
    public func rewardedVideoDidEnd() {
        logFunctionName()
    }
    
    /**
     Called after a rewarded video has started playing.
     */
    public func rewardedVideoDidStart() {
        logFunctionName()
    }
    
    /**
     Called after a rewarded video has been dismissed.
     */
    public func rewardedVideoDidClose() {
        logFunctionName()
        let action = UIAlertAction.init(title: "OK", style: .cancel)
        let alert = UIAlertController.init(title:"Video Reward",
                                           message:"You have been rewarded " + rvPlacementInfo.rewardName! + ": \(String(describing: rvPlacementInfo.rewardAmount))",
                                       preferredStyle: .alert)
        alert.addAction(action)
        self.present(alert, animated: true)
    }
    
    /**
     Called after a rewarded video has been opened.
     */
    public func rewardedVideoDidOpen() {
        logFunctionName()
    }
    
    /**
     Called after a rewarded video has attempted to show but failed.
     
     @param error The reason for the error
     */
    public func rewardedVideoDidFailToShowWithError(_ error: Error!) {
        logFunctionName(string: #function+String(describing: error.self))
    }
    
    /**
     Called after a rewarded video has been viewed completely and the user is eligible for reward.
     
     @param placementInfo An object that contains the placement's reward name and amount.
     */
    public func didReceiveReward(forPlacement placementInfo: ISPlacementInfo!) {
        rvPlacementInfo = placementInfo
        logFunctionName(string: #function+String(describing: placementInfo.self))
    }
    /**
     Called after a rewarded video has been clicked.
     
     @param placementInfo An object that contains the placement's reward name and amount.
     */
    func didClickRewardedVideo(_ placementInfo: ISPlacementInfo!) {
        logFunctionName(string: #function+String(describing: placementInfo.self))
    }
    
    
    //MARK: ISImpressionData Functions
    func impressionDataDidSucceed(_ impressionData: ISImpressionData!) {
        logFunctionName(string: #function+String(describing: impressionData))
    }
    
}


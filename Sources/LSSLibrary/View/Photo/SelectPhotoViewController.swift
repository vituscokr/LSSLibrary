//
//  File.swift
//  
//
//  Created by Gyeongtae Nam on 2022/05/02.
//

import Foundation
import UIKit
import TLPhotoPicker

public class SelectPhotoViewController : UIViewController, UINavigationControllerDelegate {
    
    
    
    public var viewController : TLPhotosPickerViewController?

    convenience init() {
        self.init()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.viewController = TLPhotosPickerViewController()
        
        
        self.view.addSubview(self.viewController?.view ?? UIView()  )
        
       // setup()
        
        
    }
    
}


/*
extension SelectPhotoViewController {
    
    func setup() {
        
        let viewController = TLPhotosPickerViewController()
        viewController.delegate = self
        viewController.configure.singleSelectedMode = false
        viewController.configure.allowedVideo = false
       // viewController.configure.allowedPhotograph = true   // 사진 찍기
        viewController.configure.allowedLivePhotos = false
        viewController.configure.usedCameraButton = true
        viewController.configure.maxSelectedAssets = maxSelect
        viewController.configure.cancelTitle = "취소"
        viewController.configure.doneTitle = "완료"
 //       viewController.configure.selectedColor = Color.purple3.uiColor()
        viewController.configure.numberOfColumn = 3
//        viewController.configure.maxSelectedAssets = 5 -  model.files.count
        viewController.modalPresentationStyle = .fullScreen
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.present(viewController, animated: true, completion: nil )
        }
        
        
    }
}

extension SelectPhotoViewController : TLPhotosPickerViewControllerDelegate {
    
    public func canSelectAsset(phAsset: PHAsset) -> Bool {
        return true
    }
    
    public func shouldDismissPhotoPicker(withTLPHAssets: [TLPHAsset]) -> Bool {
        return true
    }
    
    
    public override func dismiss(animated flag: Bool, completion: (() -> Void)? = nil) {
        
    }
    
    public func photoPickerDidCancel() {
        
    }
    
    public func dismissComplete() {
        
    }
}
*/

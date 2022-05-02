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
    public init() {
        super.init(nibName: nil, bundle: nil)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        self.viewController = TLPhotosPickerViewController()
        
        
        guard let view = self.viewController?.view else {
            return
        }
        
        view.topAnchor.constraint(equalTo: self.view.topAnchor)
        view.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
        view.leadingAnchor.constraint(equalTo: self.view.leadingAnchor)
        view.trailingAnchor.constraint(equalTo: self.view.trailingAnchor)
        
        
        self.view.addSubview(view  )
        
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

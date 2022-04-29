//
//  File.swift
//  
//
//  Created by Gyeongtae Nam on 2022/04/29.
//

import Foundation
/*
import UIKit
import Kingfisher
import SVGKit


extension UIImage {

    func resize(size:CGSize) -> UIImage {
        UIGraphicsBeginImageContext(size)
        self.draw(in:CGRect(x: 0, y: 0, width: size.width, height: size.height))
        let scaled : UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return scaled
    }
    
    func crop(size:CGSize) -> UIImage {
        var x :CGFloat = 0.0
        var y :CGFloat = 0.0
        if self.size.width > self.size.height {
            x = (self.size.width - size.width ) * 0.5
        }else {
            y = (self.size.width - size.height) * 0.5
        }
        let imageRef:CGImage = (self.cgImage?.cropping(to: CGRect(x: x, y: y, width: size.width, height: size.height)))!
        let croped:UIImage = UIImage(cgImage: imageRef)
        return croped
    }
    
    static func from(_ color:UIColor,size:CGSize) ->UIImage {
        let rect = CGRect(origin: CGPoint.zero, size: size)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        context!.setFillColor(color.cgColor)
        context!.fill(rect)
        //context!.setAlpha(1.0)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }
    
    //view 를 저장하기 위해서
    convenience init(view: UIView) {
        UIGraphicsBeginImageContext(view.bounds.size)
        view.layer.render(in:UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.init(cgImage: image!.cgImage!)
    }
    
    
    func resizeImage( targetSize: CGSize) ->UIImage{
        let size = self.size

        let widthRatio  = targetSize.width  / self.size.width
        let heightRatio = targetSize.height / self.size.height

        // Figure out what our orientation is, and use that to form the rectangle
        var newSize: CGSize
        if(widthRatio > heightRatio) {
            newSize = CGSize(width: size.width * heightRatio, height: size.height * heightRatio)
        } else {
            newSize = CGSize(width: size.width * widthRatio,  height: size.height * widthRatio)
        }

        // This is the rect that we've calculated out and this is what is actually used below
        let rect = CGRect(x: 0, y: 0, width: newSize.width, height: newSize.height)

        // Actually do the resizing to the rect using the ImageContext stuff
        UIGraphicsBeginImageContextWithOptions(newSize, false, 1.0)
        self.draw(in: rect)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return newImage!
    }
    
}


public struct SVGImgProcessor:ImageProcessor {
    public var identifier: String = "com.appidentifier.webpprocessor"
    public func process(item: ImageProcessItem, options: KingfisherParsedOptionsInfo) -> KFCrossPlatformImage? {
        switch item {
        case .image(let image):
            print("already an image")
            return image
        case .data(let data):
            let imsvg = SVGKImage(data: data)
            return imsvg?.uiImage
        }
    }
}


//extension UIImageView {
//
//    func setImage(with urlString: String) {
//        let cache = ImageCache.default
//
//        cache.retrieveImage(forKey: urlString, options: nil, callbackQueue: <#T##CallbackQueue#>) { (<#Result<ImageCacheResult, KingfisherError>#>) in
//            <#code#>
//        }
//        cache.retrieveImage(forKey: urlString, options: nil) { (image, _) in // 캐시에서 키를 통해 이미지를 가져온다.
//            if let image = image { // 만약 캐시에 이미지가 존재한다면
//                self.image = image // 바로 이미지를 셋한다.
//            } else {
//                let url = URL(string: urlString)! // 캐시가 없다면
//                let resource = ImageResource(downloadURL: url, cacheKey: urlString) // URL로부터 이미지를 다운받고 String 타입의 URL을 캐시키로 지정하고
//                self.kf.setImage(with: resource) // 이미지를 셋한다.
//            }
//        }
//    }
//
//}



extension UIImage {
    func pixelBuffer() -> CVPixelBuffer? {
           let width = self.size.width
           let height = self.size.height
           let attrs = [kCVPixelBufferCGImageCompatibilityKey: kCFBooleanTrue,
                        kCVPixelBufferCGBitmapContextCompatibilityKey: kCFBooleanTrue] as CFDictionary
           var pixelBuffer: CVPixelBuffer?
           let status = CVPixelBufferCreate(kCFAllocatorDefault,
                                            Int(width),
                                            Int(height),
                                            kCVPixelFormatType_32ARGB,
                                            attrs,
                                            &pixelBuffer)

           guard let resultPixelBuffer = pixelBuffer, status == kCVReturnSuccess else {
               return nil
           }

           CVPixelBufferLockBaseAddress(resultPixelBuffer, CVPixelBufferLockFlags(rawValue: 0))
           let pixelData = CVPixelBufferGetBaseAddress(resultPixelBuffer)

           let rgbColorSpace = CGColorSpaceCreateDeviceRGB()
           guard let context = CGContext(data: pixelData,
                                         width: Int(width),
                                         height: Int(height),
                                         bitsPerComponent: 8,
                                         bytesPerRow: CVPixelBufferGetBytesPerRow(resultPixelBuffer),
                                         space: rgbColorSpace,
                                         bitmapInfo: CGImageAlphaInfo.noneSkipFirst.rawValue) else {
                                           return nil
           }

           context.translateBy(x: 0, y: height)
           context.scaleBy(x: 1.0, y: -1.0)

           UIGraphicsPushContext(context)
           self.draw(in: CGRect(x: 0, y: 0, width: width, height: height))
           UIGraphicsPopContext()
           CVPixelBufferUnlockBaseAddress(resultPixelBuffer, CVPixelBufferLockFlags(rawValue: 0))

           return resultPixelBuffer
       }
}
*/


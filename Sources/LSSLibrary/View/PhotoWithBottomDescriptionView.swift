//
//  PhotoWithBottomDescriptionView.swift
//  LSSLibrary
//
//  Created by app_ios on 2020/04/14.
//

import SwiftUI
//import KingfisherSwiftUI


public struct Thumb {
    var title : String
    var image:String
    var url:URL?
    
    public init(title:String = "", image:String = "", url:String = ""  ){
        self.title = title
        self.image = image
        
        if url != "" {
            self.url = URL(string: url)
        }else {
            self.url = nil
        }
       
    }
}

@available(iOS 13, * )
public struct PhotoWithBottomDescriptionView: View {
    
    var thumb : Thumb
    public init(thumb:Thumb) {
        self.thumb = thumb
    }
    
    public var body: some View {
        ZStack(alignment: .bottomLeading) {
            
            if thumb.image != "" {
                Image(thumb.image)
                 .resizable()
                     .frame(width:400, height:400)
                    .aspectRatio(contentMode: .fill)
                 .cornerRadius(15)
                 
            }else {
//                KFImage(thumb.url)
//                 .resizable()
//                     .frame(width:400, height:400)
//                    .aspectRatio(contentMode: .fill)
//                 .cornerRadius(15)
                 
            }


            RoundedRectangle(cornerRadius: 5)
                .frame(width:400, height:60)
                .opacity(0.3)
                .blur(radius: 10)
            
            Text("\(thumb.title)")
                .font(.title)
            .bold()
                .foregroundColor(.white)
            .padding()
                
        }
    }
}

#if DEBUG
@available(iOS 13, * )
public struct PhotoWithBottomDescriptionView_Previews: PreviewProvider {
    public static var previews: some View {
        PhotoWithBottomDescriptionView(thumb: Thumb(url:"https://img.hankyung.com/photo/201911/03.17987273.1.jpg"))
    }
}
#endif

//
//  PreviewView.swift
//  CaelinCore
//
//  Created by Caelin Jackson-King on 2019-05-26.
//

import UIKit
import AVFoundation

class PreviewView: UIView {
    override class var layerClass: AnyClass {
        return AVCaptureVideoPreviewLayer.self
    }
    
    var videoPreviewLayer: AVCaptureVideoPreviewLayer? {
        return layer as? AVCaptureVideoPreviewLayer
    }
    
    func preview(session: AVCaptureSession) {
        videoPreviewLayer?.session = session
    }
}

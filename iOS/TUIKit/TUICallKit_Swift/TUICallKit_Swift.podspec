Pod::Spec.new do |s|
  s.name             = 'TUICallKit_Swift'
  s.version          = '8.6.7019'
  s.summary          = 'TUICallKit Swift Version'
  s.homepage         = 'https://cloud.tencent.com/product/trtc'
  s.license          = { :type => 'Copyright', :text => 'Tencent' }
  s.author           = { 'tencent' => 'cloud@tencent.com' }
  s.source           = { :git => 'https://github.com/yalidou/TIMSDK.git', :tag => s.version.to_s }
  
  s.ios.deployment_target = '11.0'
  s.swift_version = '5.0'
  s.source_files = '**/*.{swift,h,m,mm}'
  s.resource = '**/*.{bundle,xib,storyboard,json,xcassets}'
  s.frameworks = 'AVFoundation', 'Accelerate'
  s.dependency 'TUICore'
end

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
  
  # 从 podspec 所在目录的相对路径
  s.source_files = 'TUICallKit_Swift/**/*.{swift,h,m,mm}'
  s.exclude_files = '**/Demo/**', '**/Pods/**', '**/Tests/**', '**/Debug/**'
  
  s.resource = 'TUICallKit_Swift/Resources/**/*.{bundle,xcassets,json,plist,lproj,xib,storyboard}'
  
  s.frameworks = 'AVFoundation', 'Accelerate', 'ReplayKit', 'SystemConfiguration', 'CoreTelephony'
  s.libraries = 'c++', 'resolv', 'sqlite3'
  
  s.dependency 'TUICore'
  s.dependency 'TXLiteAVSDK_Professional'
end

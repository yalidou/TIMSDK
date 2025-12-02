Pod::Spec.new do |spec|
  spec.name = 'TIMPush'
  spec.version      = '8.6.7019'
  spec.platform     = :ios
  spec.ios.deployment_target = '10.0'
  spec.license      = { :type => 'Proprietary',
      :text => <<-LICENSE
        copyright 2023 tencent Ltd. All rights reserved.
        LICENSE
       }
  spec.homepage     = 'https://cloud.tencent.com/document/product/269/3794'
  spec.documentation_url = 'https://cloud.tencent.com/document/product/269/9147'
  spec.authors      = 'tencent video cloud'
  spec.summary      = 'TPush'
  
  spec.requires_arc = true

  spec.source = { :git => 'https://github.com/yalidou/TIMSDK.git', :tag => spec.version.to_s }
  
  spec.dependency 'TXPushSDK_IOS_XCFramework'

  spec.vendored_frameworks = 'TIMPush.xcframework'
  spec.resource_bundle = {
        "#{spec.module_name}_Privacy" => '**/TIMPush.xcframework/ios-arm64/TIMPush.framework/PrivacyInfo.xcprivacy'
  }

  spec.public_header_files = '**/TIMPush.xcframework/ios-arm64/TIMPush.framework/Headers/*.h'
  spec.source_files = '**/TIMPush.xcframework/ios-arm64/TIMPush.framework/Headers/*.h'
  spec.xcconfig = { 'HEADER_SEARCH_PATHS' => '**/TIMPush.xcframework/ios-arm64/TIMPush.framework/Headers/*.h'}
  

end

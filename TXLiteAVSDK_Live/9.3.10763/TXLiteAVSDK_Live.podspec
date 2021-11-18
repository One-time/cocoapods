Pod::Spec.new do |spec|
    spec.name         = 'TXLiteAVSDK_Live'
    spec.version      = '9.3.10763'
    spec.platform     = :ios 
    spec.ios.deployment_target = '8.0'
    spec.license      = { :type => 'Proprietary',
              :text => <<-LICENSE
                  copyright 2017 tencent Ltd. All rights reserved.
                  LICENSE
               }
    spec.homepage     = 'https://cloud.tencent.com/product/mlvb'
    spec.documentation_url = 'https://cloud.tencent.com/document/product/454/7876'
    spec.authors      = 'tencent video cloud'
    spec.summary      = 'TXLiteAVSDK for Live Edition.'
    spec.ios.framework = ['SystemConfiguration','CoreTelephony', 'VideoToolbox', 'CoreGraphics', 'AVFoundation', 'Accelerate', 'OpenAL']
    spec.ios.library = 'z', 'resolv', 'iconv', 'c++', 'sqlite3'
    spec.requires_arc = true
  
    spec.source = { :http => 'https://liteav.sdk.qcloud.com/download/releases/9.3/TXLiteAVSDK_Live_iOS_9.3.10763.zip' }
    spec.preserve_paths = 'TXLiteAVSDK_Live/SDK/TXLiteAVSDK_Live.framework'
    spec.source_files = 'TXLiteAVSDK_Live/SDK/TXLiteAVSDK_Live.framework/Headers/*.h'
    spec.public_header_files = 'TXLiteAVSDK_Live/SDK/TXLiteAVSDK_Live.framework/Headers/*.h'
    spec.vendored_frameworks = 'TXLiteAVSDK_Live/SDK/TXLiteAVSDK_Live.framework'
    spec.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/TXLiteAVSDK_Live/TXLiteAVSDK_Live/SDK/TXLiteAVSDK_Live.framework/Headers/'}
  end
  
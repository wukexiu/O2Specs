Pod::Spec.new do |s|
  s.name         = "O2View"                #名称
  s.version      = "0.1.0"                #版本号
  s.summary      = "Just testing"        #简短介绍
  s.description  = <<-DESC
                      私有Pods测试
                      * Markdown 格式
                   DESC

  s.homepage     = "https://github.com/wukexiu"
  # s.screenshots  = "www.example.com/screenshots_1.gif"
  s.license      = "MIT"                #开源协议
  s.author             = { "wukexiu" => "290348331@qq.com" }

  # s.source       = { :http => "https://dev.ios.mob.com/files/download/sharesdk/ShareSDK_For_iOS_v4.3.7.zip" }
  ## 这里不支持ssh的地址，只支持HTTP和HTTPS，最好使用HTTPS
  ## 正常情况下我们会使用稳定的tag版本来访问，如果是在开发测试的时候，不需要发布release版本，直接指向git地址使用
  ## 待测试通过完成后我们再发布指定release版本，使用如下方式
  s.source       = { :git => "https://github.com/wukexiu/O2View.git"}

  s.platform     = :ios            #支持的平台及版本，这里我们呢用swift，直接上9.0
  s.ios.deployment_target = "9.0"
  s.requires_arc = true                    #是否使用ARC
  
  s.source_files  = "O2View/**/*.{h,m}"
  # s.exclude_files = "Classes/Exclude"
  s.public_header_files = "Classes/**/*.h"
  # s.source_files  = "O2View/*.swift"

  s.frameworks = 'JavaScriptCore', 'UIKit', 'QuartzCore', 'Foundation'    #所需的framework,多个用逗号隔开
  s.libraries = 'sqlite3'
  s.module_name = 'O2View'                #模块名称

  # s.dependency "JSONKit", "~> 1.4"    #依赖关系，该项目所依赖的其他库，如果有多个可以写多个 s.dependency

  s.dependency 'MOBFoundation','>= 3.2.9'
  # s.default_subspecs = 'ShareSDK'

 
  s.app_spec 'O2ViewSample' do |app_spec|
    app_spec.info_plist = {
      'CFBundleIdentifier' => 'com.O2Spec.O2ViewSample',
      'SERVER_URL' => 'https://github.com/wukexiu'
    }
  end
  
  s.info_plist = {
    'CFBundleIdentifier' => 'com.O2Spec.O2View',
    'SERVER_URL' => 'https://github.com/wukexiu'
  }
  
    # # 核心模块
    # s.subspec 'ShareSDK' do |sp|
    #     sp.vendored_frameworks = 'ShareSDK/ShareSDK.framework','ShareSDK/Support/Required/ShareSDKConnector.framework'
    #     sp.resource_bundles = {
    #        'ShareSDK' => ['ShareSDK/Support/Required/ShareSDK.bundle/*.lproj','ShareSDK/Support/Required/ShareSDK.bundle/ScriptCore/*.js']
    #     }
    # end

    # 各个平台：每个平台都必须要有ShareSDK.bundle和对应的Connector
    # s.subspec 'ShareSDKPlatforms' do |sp|
    #    # QQ
    #     sp.subspec 'QQ' do |ssp|
    #         ssp.vendored_frameworks = 'ShareSDK/Support/PlatformSDK/QQSDK/TencentOpenAPI.framework','ShareSDK/Support/PlatformConnector/QQConnector.framework'
    #         ssp.libraries = 'sqlite3'
    #         ssp.dependency 'O2View/ShareSDK'
    #         ssp.resource_bundles = {
    #             'ShareSDK_JS_QQ' => ['ShareSDK/Support/Required/ShareSDK.bundle/ScriptCore/platforms/QQ.js']
    #         }

    #         # s.info_plist = {
    #         #     'LSApplicationQueriesSchemes' => ['mqqopensdkminiapp','mqqapi','mqqOpensdkSSoLogin','mqq','mqqopensdkapiV4']
    #         # }
    #     end

    #     # SinaWeibo
    #     sp.subspec 'SinaWeibo' do |ssp|
    #         ssp.vendored_libraries = "ShareSDK/Support/PlatformSDK/SinaWeiboSDK/*.a"
    #         ssp.resources = 'ShareSDK/Support/PlatformSDK/SinaWeiboSDK/WeiboSDK.bundle'
    #         ssp.vendored_frameworks = 'ShareSDK/Support/PlatformConnector/SinaWeiboConnector.framework'
    #         ssp.frameworks = 'ImageIO'
    #         ssp.libraries = 'sqlite3'
    #         ssp.source_files = "ShareSDK/Support/PlatformSDK/SinaWeiboSDK/*.{h,m}"
    #         ssp.public_header_files = "ShareSDK/Support/PlatformSDK/SinaWeiboSDK/*.h"
    #         ssp.dependency 'O2View/ShareSDK'
    #         ssp.resource_bundles = {
    #             'ShareSDK_JS_SinaWeibo' => ['ShareSDK/Support/Required/ShareSDK.bundle/ScriptCore/platforms/SinaWeibo.js']
    #         }

    #         # ssp.info_plist = {
    #         #     'LSApplicationQueriesSchemes' => ['weibo','weibosdk','sinaweibosso','weibosdk2.5','sinaweibo','sinaweibohd']
    #         # }
    #     end

    #     #WeChat
    #     sp.subspec 'WeChat' do |ssp|
    #         ssp.vendored_libraries = "ShareSDK/Support/PlatformSDK/WeChatSDK/*.a"
    #         ssp.source_files = "ShareSDK/Support/PlatformSDK/WeChatSDK/*.{h,m}"
    #         ssp.vendored_frameworks = 'ShareSDK/Support/PlatformConnector/WechatConnector.framework'
    #         ssp.public_header_files = "ShareSDK/Support/PlatformSDK/WeChatSDK/*.h"
    #         ssp.libraries = 'sqlite3'
    #         ssp.dependency 'O2View/ShareSDK'
    #         ssp.resource_bundles = {
    #             'ShareSDK_JS_WeChat' => ['ShareSDK/Support/Required/ShareSDK.bundle/ScriptCore/platforms/WeChat.js']
    #         }

    #         # ssp.info_plist = {
    #         #     'LSApplicationQueriesSchemes' => ['weixinULAPI','weixin']
    #         # }
    #     end

    # end

end
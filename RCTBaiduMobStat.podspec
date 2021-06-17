#
#  Be sure to run `pod spec lint RCTBaiduMobStat.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

require 'json'
pjson = JSON.parse(File.read('package.json'))

Pod::Spec.new do |spec|


  spec.name         = "RCTBaiduMobStat"
  spec.version      = pjson["version"]
  spec.summary      = "RCTBaiduMobStat For Timektettle."
  spec.description  = pjson["description"]
  spec.homepage     = pjson["homepage"]
  spec.license      = pjson["license"]
  spec.author       = { "licoba" => "licoba@163.com" }
  spec.source       = { :git => "https://github.com/licoba/baidumobstat-react-native.git", :tag => "#{spec.version}" }
  spec.source_files    = 'ios/RCTBaiduMobStat/*.{h,m}'
  spec.preserve_paths  = "**/*.js"
#  spec.source_files  = "Classes", "Classes/**/*.{h,m}"
#  spec.exclude_files = "Classes/Exclude"

#  spec.header_dir = "RCTBaiduMobStat"
  spec.public_header_files = "ios/RCTBaiduMobStat/*.h"
  ###### 此处设置依赖
  spec.static_framework = true
  spec.ios.vendored_frameworks = 'ios/RCTBaiduMobStat/UserFeedBack.framework'
  spec.ios.vendored_libraries = 'ios/RCTBaiduMobStat/*.a'
  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # spec.resource  = "icon.png"
  # spec.resources = "Resources/*.png"

  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # spec.framework  = "SomeFramework"
  # spec.frameworks = "SomeFramework", "AnotherFramework"

  # spec.library   = "iconv"
  # spec.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # spec.requires_arc = true
  # 使用这个来配置头文件搜索路径
#   spec.xcconfig = { "HEADER_SEARCH_PATHS" => "${PODS_ROOT}/Headers/Public/RCTBaiduMobStat" }
# #  spec.pod_target_xcconfig = { "HEADER_SEARCH_PATHS" => "${PODS_ROOT}/Headers/Public/RCTBaiduMobStat" }
#   spec.pod_target_xcconfig = {
#                                 "USE_HEADERMAP" => "YES",
#                                 "HEADER_SEARCH_PATHS" => "\"$(PODS_ROOT)/Headers/Public/RCTBaiduMobStat\""
#                               }

  spec.dependency 'React'
  

end

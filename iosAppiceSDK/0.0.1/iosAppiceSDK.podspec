#
#  Be sure to run `pod spec lint iosAppiceSDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "iosAppiceSDK"
  spec.version      = "0.0.1"
  spec.summary      = "Testing iosAppiceSDK."
  spec.description  = <<-DESC
                         AppICESDK frameworks test with podspec
                   DESC

  spec.homepage     = "https://panel.appice.io/"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  #spec.license      = { :type => "MIT" }
  spec.license      = { :type => "MIT", :file => "LICENSE" }

  spec.author             = { "Deepti Dhumavat" => "deepti.dhumavat@semusi.com" }
  # Or just: spec.author    = "Deepti Dhumavat"
  # spec.authors            = { "Deepti Dhumavat" => "deepti.dhumavat@semusi.com" }
  # spec.social_media_url   = "https://twitter.com/Deepti Dhumavat"

  # spec.platform     = :ios
  spec.platform     = :ios, "8.0"

  spec.ios.deployment_target = "8.0"

  spec.source       = { :git => "https://github.com/deepti-semusi/iosAppiceSDK.git", :tag => "#{spec.version}" }
  #spec.source       = { :git => "https://github.com/deepti-semusi/iosAppiceSDK.git", :tag => "master" }

  spec.source_files  = "iosAppiceSDK", "iosAppiceSDK/**/*.{h}"
  spec.exclude_files = "iosAppiceSDK/Pods"

  #spec.public_header_files = "*.h"
  spec.public_header_files = "Headers/Public/*.h"

  # spec.resource  = "icon.png"
  # spec.resources = "Resources/*.png"

  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"

  spec.framework  = "iosAppiceSDK"
  spec.frameworks = [
  "Accounts",
  "AdSupport",
  "AssetsLibrary",
  "AVFoundation",
  "CoreData",
  "CoreFoundation",
  "CoreGraphics",
  "CoreTelephony",
  "Foundation",
  "iAd",
  "ImageIO",
  "MobileCoreServices",
  "NotificationCenter",
  "QuartzCore",
  "Security",
  "Social",
  "SystemConfiguration",
  "UserNotifications"
  ]

  spec.weak_frameworks = [
  "UIKit",
  "UserNotificationsUI"
  ]

  spec.libraries = "c++","z"

  spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  #spec.vendored_frameworks = "iosAppiceSDK.framework"
  spec.dependency "BugfenderSDK", "~> 1.7"


end

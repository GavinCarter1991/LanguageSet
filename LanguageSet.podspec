#
# Be sure to run `pod lib lint LanguageSet.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LanguageSet'
  s.version          = '0.0.1'
  s.summary          = 'multilingual processing.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
A few simple lines of code can handle multiple languages
                       DESC

  s.homepage         = 'https://github.com/GavinCarter1991/LanguageSet'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'gavin' => 'kindyourself@163.com' }
  s.source           = { :git => 'https://github.com/GavinCarter1991/LanguageSet.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'

  s.source_files = 'LanguageSet/Classes/**/*'
  
  # s.resource_bundles = {
  #   'LanguageSet' => ['LanguageSet/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end

#
# Be sure to run `pod lib lint BMPlayer.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "Jsonify"
  s.version          = "1.1.0"
  s.summary          = "A delightful JSON parsing framework written in Swift"

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                        A delightful JSON parsing framework for iOS/macOS platforms written in Swift.
                        DESC

  s.homepage         = "https://github.com/Meniny/Jsonify-in-Swift"
  s.license          = 'MIT'
  s.author           = { "Meniny" => "Meniny@qq.com" }
  s.source           = { :git => "https://github.com/Meniny/Jsonify-in-Swift.git", :tag => s.version.to_s }
  s.social_media_url = 'http://meniny.cn/'

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.10'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'

  s.source_files = 'Jsonify/**/*{.h}','Jsonify/**/*{.swift}'
  s.public_header_files = 'Jsonify/**/*{.h}'

  s.frameworks = 'Foundation'
end

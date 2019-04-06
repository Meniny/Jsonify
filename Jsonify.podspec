Pod::Spec.new do |s|
  s.name             = "Jsonify"
  s.version          = "2.2.0"
  s.summary          = "A delightful JSON parsing framework written in Swift"
  s.description      = <<-DESC
                        A delightful JSON parsing framework for iOS/macOS platforms written in Swift.
                        DESC

  s.homepage         = "https://github.com/Meniny/Jsonify"
  s.license          = 'MIT'
  s.author           = { "Meniny" => "Meniny@qq.com" }
  s.source           = { :git => "https://github.com/Meniny/Jsonify.git", :tag => s.version.to_s }
  s.social_media_url = 'http://meniny.cn/'

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.10'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'

  s.pod_target_xcconfig   = { 'SWIFT_VERSION' => '5' }
  s.swift_version         = "5"

  s.source_files = 'Jsonify/**/*{.h}','Jsonify/**/*{.swift}'
  s.public_header_files = 'Jsonify/**/*{.h}'

  s.frameworks = 'Foundation'
end

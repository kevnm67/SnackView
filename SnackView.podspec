#
# Be sure to run `pod lib lint SnackView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SnackView'
  s.version          = '1.0.6'
  s.summary          = 'A new way to stack UI items in the bottom of the screen.'
  s.swift_version    = '4.2'
  s.description      = <<-DESC
SnackView present a customizable AppStore alert style which remains anchored in bottom of the screen.
                       DESC

  s.homepage         = 'http://www.lucacasula.it'
  # s.screenshots     = 'http://www.lucacasula.it/snackview/screenshots_1.jpg'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  
  s.author             = { "Luca Casula" => "lucacasula@icloud.com" }
  # s.social_media_url   = "http://www.linkedin.com/in/iluca-ios-dev"
  
  s.source           = { :git => 'https://github.com/lucacasula91/SnackView.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.3'

  s.source_files = 'SnackView/Classes/**/*'
  s.exclude_files = "Classes/Exclude"
  
  # s.resource_bundles = {
  #   'SnackView' => ['SnackView/Assets/*.png']
  # }
  
end

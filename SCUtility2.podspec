#
# Be sure to run `pod lib lint SCUtility2.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SCUtility2'
  s.version          = '2.0.0'
  s.summary          = 'SCUtility2 Library'

  s.description      = <<-DESC
                       SCUtility is a private utility library .
                       DESC

  s.homepage         = 'https://github.com/JianlinZhu/SCUtility2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Jarry' => 'jarry@aikucun.com' }
  s.source           = { :git => 'https://github.com/JianlinZhu/SCUtility2.git', :tag => s.version.to_s }

  s.platform         = :ios, '7.0'
  s.ios.deployment_target = '7.0'

  s.requires_arc = true
  s.source_files = 'SCUtility/**/*.{h,m}'
  s.public_header_files = 'SCUtility/**/*.h'

  non_arc_files = 'SCUtility/JSONKit/JSONKit.{h,m}'
  s.exclude_files = non_arc_files
  s.subspec 'no-arc' do |sp|
    sp.source_files = non_arc_files
    sp.requires_arc = false
  end

  s.frameworks = 'UIKit', 'CoreFoundation'
  s.dependency 'AFNetworking'
  s.dependency 'CocoaLumberjack'
end

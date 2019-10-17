#
# Be sure to run `pod lib lint CaelinCore.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CaelinCore'
  s.version          = '0.2.1'
  s.summary          = 'Core Utilities to make writing apps easier'

  s.description      = <<-DESC
A collection of random things, mostly related to view manipulation, which make life easier for my personal development.
                       DESC

  s.homepage         = 'https://github.com/caelink/CaelinCore'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'caelink' => 'caelink@gmail.com' }
  s.source           = { :git => 'https://github.com/caelink/CaelinCore.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'

  s.source_files = 'CaelinCore/Classes/**/*'
  s.swift_version = '5.1'
  
  # s.resource_bundles = {
  #   'CaelinCore' => ['CaelinCore/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end

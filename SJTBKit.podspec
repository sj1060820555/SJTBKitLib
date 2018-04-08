#
# Be sure to run `pod lib lint SJTBKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SJTBKit'
  s.version          = '0.1.7'
  s.summary          = 'SJTBKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/sj1060820555/SJTBKit.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'sj1060820555@163.com' => 'sj1060820555@163.com' }
  s.source           = { :git => 'https://github.com/sj1060820555/SJTBKitLib.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.ios.deployment_target = '8.0'

#s.source_files = 'SJTBKit/Classes/**/*'

    s.default_subspec = 'CoreClss'


s.subspec 'CoreClss' do |coreClass|

    coreClass.prefix_header_file = 'SJTBKit/CoreClass/SJTBKitHeader.h'
    coreClass.source_files = 'SJTBKit/CoreClass/**/**/*'

    coreClass.dependency  'Masonry' , '~> 1.1.0'
    coreClass.dependency  'SDWebImage' , '~> 4.2.3'

end

#s.subspec 'UI' do |ui|

#       ui.prefix_header_file = 'SJTBKit/CoreClass/UI/SJTBKitUI.h'
#       ui.source_files = 'SJTBKit/CoreClass/UI/**/**/*'
#        ui.public_header_files = 'SJTBKit/CoreClass/UI/**/*.h'
#      #ui.dependency  'Masonry' , '~> 1.1.0'
#     #ui.dependency  'SDWebImage' , '~> 4.2.3'

#end


#s.subspec 'NET' do |net|
#    net.public_header_files = 'SJTBKit/CoreClass/Net/SJTBKitNet.h'
#     net.source_files = 'SJTBKit/CoreClass/Net/**/**/*'
#end




  
  # s.resource_bundles = {
  #   'SJTBKit' => ['SJTBKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end

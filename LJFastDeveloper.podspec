#
# Be sure to run `pod lib lint LJFastDeveloper.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LJFastDeveloper'
  s.version          = '0.1.0'
  s.summary          = 'A short description of LJFastDeveloper.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/manajay/LJFastDeveloper'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'manajay' => 'manajay.dlj@gmail.com' }
  s.source           = { :git => 'https://github.com/manajay/LJFastDeveloper.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.ios.deployment_target = '9.0'
  s.source_files = 'LJFastDeveloper/Classes/**/*'
  s.public_header_files = 'Pod/Classes/**/*.h'
  s.default_subspec = 'Core'
  
  s.subspec 'Core' do |cs|
     cs.dependency 'FLEX', '~> 3.1.1'
  end

  s.subspec 'App' do |as|
    as.dependency 'WoodPeckeriOS' , '~> 1.2.4'
  end
  
  s.subspec 'Leaks' do |lk|
    lk.dependency 'MLeaksFinder' , '~> 1.0.0'
  end
  
end

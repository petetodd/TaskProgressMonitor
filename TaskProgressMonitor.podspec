#
# Be sure to run `pod lib lint TaskProgressMonitor.podspec' to ensure this is a
# valid spec before submitting. 
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TaskProgressMonitor'
  s.version          = '0.1.2'
  s.summary          = 'Generic task progres monitor with progress UI and Logging.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Generic task monitor to review progress and also log output.  For use in apps communicating with remote servers
                       DESC

  s.homepage         = 'https://github.com/petetodd/TaskProgressMonitor'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Peter Todd' => 'peter@petertodd.com' }
  s.source           = { :git => 'https://github.com/petetodd/TaskProgressMonitor.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'TaskProgressMonitor/Classes/**/*'
  
  s.resource_bundles = {
     'CustomXibs' => ['TaskProgressMonitor/Xibs/*.xib', 'TaskProgressMonitor/CoreData/*.xcdatamodeld']
  }



  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'CoreData'
  # s.dependency 'AFNetworking', '~> 2.3'
end

Pod::Spec.new do |s|
  s.name         = 'CameraPickerDemo'
  s.version      = '0.1.0'
  s.summary      = 'A framework for picking and capturing photos and videos.'
  s.description  = <<-DESC
                    CameraPickerDemo is a Swift framework that simplifies the process of picking and capturing photos and videos within your iOS applications. It offers an easy-to-use API for integrating camera functionality and image/video selection features.
                    DESC
  s.homepage     = 'https://github.com/jakirkhan370/CameraPickerDemo'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'Jakir Khan' => 'jakir.khan@thinkexam.com' }
  s.source       = { :git => 'https://github.com/jakirkhan370/CameraPickerDemo.git', :tag => s.version.to_s }
  s.platform     = :ios, '12.0'
  s.source_files = 'CameraPickerDemo/**/*.{swift,h,m}'
  s.swift_version = '5.0'
end

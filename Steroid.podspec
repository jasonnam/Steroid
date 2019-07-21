Pod::Spec.new do |spec|
  spec.name     = 'Steroid'
  spec.version  = '0.1.4'
  spec.authors  = { 'Jason Nam' => 'contact@jasonnam.com' }
  spec.license  = 'MIT'
  spec.homepage = 'https://github.com/jasonnam/Steroid'
  spec.summary  = 'Swift development on steroids.'
  spec.source   = { :git => 'https://github.com/jasonnam/Steroid.git',
                    :tag => spec.version.to_s }
  spec.swift_version = '5.0'
  spec.default_subspec = 'Swift'
  spec.subspec 'Swift' do |spec|
    spec.source_files = 'Sources/Steroid/**/*.{swift}'
  end
  spec.subspec 'UIKit' do |spec|
    spec.ios.deployment_target = '8.0'
    spec.source_files = 'Sources/SteroidUIKit/**/*.{swift}'
  end
  spec.subspec 'UIKit11' do |spec|
    spec.ios.deployment_target = '11.0'
    spec.source_files = 'Sources/SteroidUIKit11/**/*.{swift}'
  end
  spec.subspec 'UIKit13' do |spec|
    spec.ios.deployment_target = '13.0'
    spec.source_files = 'Sources/SteroidUIKit13/**/*.{swift}'
  end
end

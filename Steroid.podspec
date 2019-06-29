Pod::Spec.new do |spec|
  spec.name     = 'Steroid'
  spec.version  = '0.1.0'
  spec.authors  = { 'Jason Nam' => 'contact@jasonnam.com' }
  spec.license  = 'MIT'
  spec.homepage = 'https://github.com/jasonnam/Steroid'
  spec.summary  = 'Swift development on steroids.'
  spec.source   = { :git => 'https://github.com/jasonnam/Steroid.git',
                    :tag => spec.version.to_s }
  spec.ios.deployment_target = '10.0'
  spec.default_subspec = 'Swift'
  spec.subspec 'Swift' do |spec|
    spec.source_files = 'Sources/Steroid/**/*.{swift}'
  end
  spec.subspec 'UIKit' do |spec|
    spec.source_files = 'Sources/SteroidUIKit/**/*.{swift}'
  end
end

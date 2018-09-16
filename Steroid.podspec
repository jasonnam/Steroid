Pod::Spec.new do |s|
  s.name         = 'Steroid'
  s.version      = '0.1.0'
  s.summary      = 'Steroid'
  s.description  = <<-DESC
                   Steroid
                   DESC
  s.homepage     = 'https://github.com/Steroid/Steroid'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'jasonnam' => 'contact@jasonnam.com' }

  s.ios.deployment_target = '10.0'

  s.source       = { :path => '.' }
  s.source_files = 'Sources/Steroid/**/*.{swift}'
end

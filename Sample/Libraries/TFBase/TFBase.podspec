Pod::Spec.new do |spec|
  spec.name         = "TFBase"
  spec.version      = "1.0.0"
  spec.homepage     = 'https://thoughtful.community'
  spec.authors      = { 'Brian Amerige' => 'brian@thoughtful.community' }
  spec.summary      = 'TFBase'
  spec.platform     = :ios, "13.0"
  spec.source       = { :path => '.' }
  spec.source_files  = "Source/**/*.{h,m}"
  spec.static_framework = true
  spec.dependency 'Firebase/Analytics'
end

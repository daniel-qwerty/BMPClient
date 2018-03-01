Pod::Spec.new do |s|
  s.name             = 'BMClient'
  s.version          = '0.1.0'
  s.summary          = 'API app Model'

  s.description      = <<-DESC
This fantastic view changes its color gradually makes your app look fantastic!
                       DESC

  s.homepage         = 'https://github.com/daniel-qwerty/BMPClient'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'DAN' => 'daniel-qwerty' }
  s.source           = { :git => 'https://github.com/daniel-qwerty/BMPClient.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.source_files = 'BMPClient/*.{swift,plist}'

end
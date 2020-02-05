Pod::Spec.new do |s|
s.name             = 'DMHoneyCombGrid'
s.version          = '0.1.0'
s.summary          = 'A short description of DMHoneyCombGrid.'
s.homepage         = 'https://github.com/denismullaraj/DMHoneyCombGrid'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'Denis Mullaraj' => 'denis.mullaraj@hotmail.com' }
s.source           = { :git => 'https://github.com/denismullaraj/DMHoneyCombGrid.git', :tag => s.version.to_s }
s.ios.deployment_target = '9.0'
s.source_files = 'DMHoneyCombGrid/Classes/**/*'
s.frameworks = 'UIKit'
end

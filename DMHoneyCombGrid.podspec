Pod::Spec.new do |s|
s.name             = 'DMHoneyCombGrid'
s.version          = '1.0.0'
s.summary          = 'DMHoneyCombGrid is a HoneyCombGrid of horizontally oriented hexagon shaped cells of any cell-per-side amount with autolayout'
s.homepage         = 'https://github.com/denismullaraj/DMHoneyCombGrid'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'Denis Mullaraj' => 'denis.mullaraj@hotmail.com' }
s.source           = { :git => 'https://github.com/denismullaraj/DMHoneyCombGrid.git', :tag => s.version.to_s }
s.ios.deployment_target = '9.0'
s.source_files = 'DMHoneyCombGrid/Classes/**/*'
s.frameworks = 'UIKit'
s.swift_version = '5.0'
end

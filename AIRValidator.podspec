Pod::Spec.new do |s|
  s.name = 'AIRValidator'
  s.version = ‘1.0.1’
  s.summary = 'Extendable, rule-based validator for Swift.'
  s.homepage = 'https://github.com/recruit-lifestyle/AIRValidator'
  s.platform = :ios, '8.0'
  s.author = { 'Yuki Nagai' => 'ynagai@r.recruit.co.jp' }
  s.license = 'Apache License, Version 2.0'
  s.source = { :git => 'https://github.com/recruit-lifestyle/AIRValidator.git', :tag => s.version }
  s.source_files = 'AIRValidator/**/*.swift'
  s.requires_arc = true
end

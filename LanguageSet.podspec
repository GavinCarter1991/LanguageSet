Pod::Spec.new do |s|
  s.name             = 'LanguageSet'
  s.version          = '0.0.2'
  s.summary          = 'multilingual processing.'

  s.description      = <<-DESC
  A few simple lines of code can handle multiple languages
  DESC

  s.homepage         = 'https://github.com/GavinCarter1991/LanguageSet'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'gavin' => 'kindyourself@163.com' }
  s.source           = { :git => 'https://github.com/GavinCarter1991/LanguageSet.git', :tag => s.version.to_s }

  s.ios.deployment_target = '12.0'

  # s.source_files = 'LanguageSet/Classes/LanguageSet.xcframework'
  # 关键修改：使用正确的路径
  s.vendored_frameworks = 'LanguageSet/Classes/LanguageSet.xcframework'
  # 添加模块映射
  s.preserve_paths = 'LanguageSet/Classes/LanguageSet.xcframework'
  
  # 关键修改2：添加资源处理排除规则
  s.pod_target_xcconfig = {
    'EXCLUDED_FILE_GROUP_PATTERNS' => [
      '**/LanguageSet.xcframework/**/_CodeSignature/**',
      '**/LanguageSet.xcframework/**/Modules/**'
    ]
  }
  
  # 关键修改3：禁用模块验证（针对 xcframework）
  s.user_target_xcconfig = { 'VALIDATE_WORKSPACE' => 'NO' }

end

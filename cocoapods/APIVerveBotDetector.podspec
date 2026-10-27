Pod::Spec.new do |s|
  s.name             = 'APIVerveBotDetector'
  s.version          = '1.2.3'
  s.summary          = 'Bot Detector analyzes user agent strings to identify bots, crawlers, and automated software.'
  s.description      = <<-'DESC'
Bot Detector analyzes user agent strings to identify bots, crawlers, and automated software. It matches against a database of known bots and adds heuristics that catch automated clients not in the database, returning the bot's category, reputation and a composite risk score. Useful for security, analytics, and access control.

This iOS/macOS SDK provides a convenient way to access the Bot Detector from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/botdetector?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/botdetector-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveBotDetector/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end

Pod::Spec.new do |s|
  s.name             = 'APIVerveBucketList'
  s.version          = '1.2.3'
  s.summary          = 'Bucket List supplies a random bucket list idea for life goals, travel aspirations, and personal adventures.'
  s.description      = <<-'DESC'
Bucket List supplies a random bucket list idea for life goals, travel aspirations, and personal adventures. Call the endpoint with no parameters to receive a single activity suggestion.

This iOS/macOS SDK provides a convenient way to access the Bucket List from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/bucketlist?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/bucketlist-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveBucketList/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end

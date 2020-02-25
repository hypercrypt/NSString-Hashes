Pod::Spec.new do |s|
  
  s.name         = "NSString-Hashes"
  s.version      = "1.2.2"
  s.summary      = "Simple Category of NSString that allows for easy MD5, SHA1 and SHA2 hashing."
  s.homepage     = "https://github.com/hypercrypt/NSString-Hashes"
  
  s.license      = { :type => "public domain", :file => 'LICENSE' }
  
  s.author       = { "Klaus-Peter Dudas" => "klaus@hypercrypt.net" }
  
  s.source       = {
      :git => "https://github.com/hypercrypt/NSString-Hashes.git",
      :tag => "#{s.version}"
  }
  
  s.ios.deployment_target = '5.0'
  s.osx.deployment_target = '10.8'
  
  s.source_files = '[^Tests]*.{h,m}'
  s.public_header_files = 'NSString+Hashes.h', 'NSData+Hashes.h'
  
  s.requires_arc = true
  
  s.test_spec do |ts|
    ts.source_files = 'Tests.m'
  end
end

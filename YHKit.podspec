Pod::Spec.new do |s|

s.name         = "YHKit"
s.version      = "1.0.0"
s.summary      = "YHKit is a easy test."

s.description  = <<-DESC
This description is used to generate tags and improve search results;
DESC

s.homepage     = "https://github.com/bill19/YHKitDemo"
s.license      = "MIT"

s.author             = { "HaoSun" => "sunhao.private@foxmail.com" }
s.source       = { :git => "https://github.com/bill19/YHKitDemo.git", :tag => "1.0.0" }
s.source_files  = 'MTKit/*.{h,m}'
s.requires_arc = true
s.dependency 'Masonry', '~> 1.1.0'
end

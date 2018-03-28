Pod::Spec.new do |s|
s.name = 'KLAddressSelector'
s.version = '0.0.9'
s.license = 'MIT'
s.summary = '地址选择器'
s.homepage = 'https://github.com/liuxiaolu/KLAddressSelector'
s.authors = { 'liuxiaolu' => '1185327278@qq.com' }



s.ios.deployment_target = '9.0'
# s.osx.deployment_target = '10.11'
# s.tvos.deployment_target = '9.0'

s.source = { :git => 'https://github.com/liuxiaolu/KLAddressSelector.git', :tag => s.version }
s.source_files = 'KLAddressSelectorExample/AddressView/*.swift'
s.resources = 'KLAddressSelectorExample/AddressView/*.plist'
#s.dependency 'SnapKit'

s.requires_arc = true



end

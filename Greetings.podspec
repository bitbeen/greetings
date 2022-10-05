Pod::Spec.new { |spec|
  spec.name = 'Greetings'
  spec.version = '0.1.1'
  spec.summary = 'test'
  spec.authors = {
    'Brendan Molloy' => 'brendan@bbqsrc.net',
  }
  spec.license = { :type => 'MIT OR Apache-2.0' }
  spec.homepage = 'https://github.com/bitbeen/pod_test/releases/tag/0.1'
  spec.ios.deployment_target = '11.0'
  spec.source_files = ['src/**/*']
  spec.pod_target_xcconfig = {
    'ENABLE_BITCODE' => 'NO',
    'LIBRARY_SEARCH_PATHS[sdk=iphoneos*][arch=arm64]' => '${PODS_TARGET_SRCROOT}/dist/aarch64-apple-ios',
    'LIBRARY_SEARCH_PATHS[sdk=iphonesimulator*][arch=x86_64]' => '${PODS_TARGET_SRCROOT}/dist/x86_64-apple-ios',
    'LIBRARY_SEARCH_PATHS[sdk=iphonesimulator*][arch=arm64]' => '${PODS_TARGET_SRCROOT}/dist/aarch64-apple-ios-sim'
  }

spec.preserve_paths = ['dist/**/*']
# pod lib lint
  spec.source = {
    :http => 'https://github.com/bitbeen/pod_test/releases/download/0.1/cargo-pod.tgz',
  }
}
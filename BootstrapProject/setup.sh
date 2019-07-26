cd `dirname $0`

bundle install --path vendor/bundle
bundle exec pod install --repo-update
Pods/SwiftGen/bin/swiftgen


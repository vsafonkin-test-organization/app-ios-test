fastlane documentation
================
# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```
xcode-select --install
```

Install _fastlane_ using
```
[sudo] gem install fastlane -NV
```
or alternatively using `brew install fastlane`

# Available Actions
### create_app
```
fastlane create_app
```
Create app on Developer Portal and App Store Connect

----

## iOS
### ios signing
```
fastlane ios signing
```
Sync signing
### ios build
```
fastlane ios build
```
Build binary
### ios bump_build
```
fastlane ios bump_build
```
Bump the build number by 1
### ios beta
```
fastlane ios beta
```
Publish build to TestFlight
### ios download_lokalise_translations
```
fastlane ios download_lokalise_translations
```
Download latest translations from Lokalise for RestocksiOS - resources
### ios download_lokalise_translations_info_plist
```
fastlane ios download_lokalise_translations_info_plist
```
Download latest translations from Lokalise for RestocksApp - info.plist

----

This README.md is auto-generated and will be re-generated every time [_fastlane_](https://fastlane.tools) is run.
More information about fastlane can be found on [fastlane.tools](https://fastlane.tools).
The documentation of fastlane can be found on [docs.fastlane.tools](https://docs.fastlane.tools).

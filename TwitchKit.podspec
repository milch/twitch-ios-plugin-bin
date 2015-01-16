Pod::Spec.new do |s|
  s.name         = "TwitchKit"
  s.version      = "2.0.1"
  s.summary      = "A plug-in that enables browsing and playback of Twitch streams in iOS applications."

  s.description  = <<-DESC
                   TwitchKit enables you to embed a list of live channels, play live broadcasts and authenticate Twitch users in your iOS app with minimal effort.
  DESC

  s.homepage     = "twitch.tv"
  s.license      = { :type => "EULA", :file => "LICENSE.md" }
  s.author             = "twitch.tv"
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/twitchtv/twitch-ios-plugin-bin.git", :tag => s.version.to_s}
  s.frameworks = "ImageIO", "CoreGraphics"
  s.libraries = "c++", "z"

  s.subspec "Debug" do |sub|
    sub.vendored_frameworks = "Debug/TwitchKit.framework"
    sub.public_header_files = "Debug/TwitchKit.framework/Versions/A/Headers/"
    sub.resource_bundles = {
      "TwitchKit" => ["Debug/TwitchKit.bundle/*"]
    }
  end

  s.subspec "Release" do |sub|
    sub.vendored_frameworks = "Release/TwitchKit.framework"
    sub.public_header_files = "Release/TwitchKit.framework/Versions/A/Headers/"
    sub.resource_bundles = {
      "TwitchKit" => ["Release/TwitchKit.bundle/*"]
    }
  end

  s.default_subspecs = "Release"
end

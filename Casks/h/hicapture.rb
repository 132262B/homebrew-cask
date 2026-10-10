cask "hicapture" do
  version "1.0.9"
  sha256 "8d1b220d6f8e6ad2460be8fadb7bd9abbd57bfb45dc18d0faf2fa838dd55ac82"

  url "https://hi-capture.com/assets/releases/hicapture-#{version}-macos.zip"
  name "HiCapture"
  desc "Screenshot and screen recording tool with an annotation editor"
  homepage "https://hi-capture.com/"

  livecheck do
    url "https://hi-capture.com/en"
    regex(/href=.*?hicapture[._-]v?(\d+(?:\.\d+)+)[._-]macos\.dmg/i)
  end

  depends_on macos: :sonoma

  app "HiCapture.app"

  uninstall quit: "com.flate.hicapture"

  zap trash: [
    "~/Library/Application Support/com.flate.hicapture",
    "~/Library/Caches/com.flate.hicapture",
    "~/Library/Preferences/com.flate.hicapture.plist",
    "~/Library/WebKit/com.flate.hicapture",
  ]
end

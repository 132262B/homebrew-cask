cask "hicapture" do
  version "1.1.3"
  sha256 "5a61b99701f4e1cb16a4d86f0ddc0f8428a44163e2ff9b790e3952bac1f0ca59"

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


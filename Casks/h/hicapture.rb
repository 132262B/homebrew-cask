cask "hicapture" do
  version "1.1.1"
  sha256 "076f8146b1221cb363681ab65e42c627ae210d5c4ec94188dea292e355cb642f"

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

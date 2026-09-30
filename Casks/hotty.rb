cask "hotty" do
  version "0.1.1"
  sha256 "163395c664fef2148248149db83597465956d0e864e34f88978ae9343a890ad4"

  url "https://github.com/justanotheratom/hotty/releases/download/v#{version}/HoTty-#{version}.zip"
  name "HoTty"
  desc "Hold on any text field, speak, and let go to type"
  homepage "https://github.com/justanotheratom/hotty"

  depends_on macos: ">= :tahoe"

  app "HoTty.app"

  uninstall quit: "llc.fungee.hotty"

  zap trash: [
    "~/Library/Application Support/HoTty",
    "~/Library/Preferences/llc.fungee.hotty.plist",
  ]
end

cask "hotty" do
  version "0.1.3"
  sha256 "3aa50fd216a52f876653ad568601ce7f8504af9fcac23a9fe72d3613ff01c2a8"

  url "https://github.com/justanotheratom/hotty/releases/download/v#{version}/HoTTy-#{version}.zip"
  name "HoTTy"
  desc "Hold on any text field, speak, and let go to type"
  homepage "https://github.com/justanotheratom/hotty"

  depends_on macos: ">= :tahoe"

  app "HoTTy.app"

  uninstall quit: "llc.fungee.hotty"

  zap trash: [
    "~/Library/Application Support/HoTty",
    "~/Library/Preferences/llc.fungee.hotty.plist",
  ]
end

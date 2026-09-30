cask "hotty" do
  version "0.1.2"
  sha256 "9d234745a9d04715516439764f5723a468d747d5923b5346fa0e5a2308824443"

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

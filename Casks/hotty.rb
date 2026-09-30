cask "hotty" do
  version "0.1.0"
  sha256 "2acd02a5555c26f30fa5d5720b812d96547a3c1faaa6482b241e7ad1b8defb50"

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

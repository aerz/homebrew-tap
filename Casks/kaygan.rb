cask "kaygan" do
  version "0.1.0"
  sha256 "ccae937c3673ac791ce175deea336b2a812d52b2a3d626c366ee5051e0a2c45f"

  url "https://github.com/aerz/Kaygan.app/releases/download/v#{version}/Kaygan-#{version}-arm64.dmg"
  name "Kaygan"
  desc "Mouse scrolling and side-button navigation"
  homepage "https://github.com/aerz/Kaygan.app"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Kaygan.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-rd", "com.apple.quarantine", "{{appdir}}/Kaygan.app"]
  end

  uninstall quit: "com.aerz.Kaygan"
end

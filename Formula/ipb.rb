class Ipb < Formula
  desc "CLI for Investec Programmable Banking cards and accounts"
  homepage "https://github.com/devinpearson/ipb"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/devinpearson/ipb/releases/download/v0.10.1/ipb-macos-arm64"
      sha256 "f9795159b1cadeae33a4c5e005ed443721cc2486778ac726de28cb2667ef5f72"
    end
    on_intel do
      url "https://github.com/devinpearson/ipb/releases/download/v0.10.1/ipb-macos-x64"
      sha256 "f3db969b744e3461b856f3c2fa90f56d6ad35992de1cdb82d99f1d53d76b78af"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/devinpearson/ipb/releases/download/v0.10.1/ipb-linux-arm64"
      sha256 "dae038f8a4da6cba74a7fb4ae82e472b476678c3328770bc53645e0652c690a9"
    end
    on_intel do
      url "https://github.com/devinpearson/ipb/releases/download/v0.10.1/ipb-linux-x64"
      sha256 "5f8500e18f14b5edcb1a725866f10ad9a4ebafa2c9f6436936a0afe6926d0e79"
    end
  end

  def install
    # The release assets are bare binaries named after the platform (e.g. ipb-macos-arm64).
    bin.install Dir["ipb-*"].first => "ipb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ipb --version")
  end
end

class Ipb < Formula
  desc "CLI application to manage programmable banking cards"
  homepage "https://github.com/devinpearson/ipb"
  url "https://github.com/devinpearson/ipb/releases/download/v#{version}/ipb-macos-arm64"
  sha256 "<SHA256_CHECKSUM>"
  version "<VERSION>"

  if Hardware::CPU.intel?
    url "https://github.com/devinpearson/ipb/releases/download/v#{version}/ipb-macos-x64"
    sha256 "<SHA256_CHECKSUM_X64>"
  end

  def install
    bin.install "ipb-macos-arm64" => "ipb"
    # For Intel builds, use:
    # bin.install "ipb-macos-x64" => "ipb"
  end

  test do
    system "#{bin}/ipb", "--version"
  end
end
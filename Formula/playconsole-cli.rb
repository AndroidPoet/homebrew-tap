# typed: false
# frozen_string_literal: true

class PlayconsoleCli < Formula
  desc "Fast, lightweight, and scriptable CLI for Google Play Console"
  homepage "https://github.com/AndroidPoet/playconsole-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AndroidPoet/playconsole-cli/releases/download/v0.2.0/playconsole-cli_0.2.0_darwin_arm64.tar.gz"
      sha256 "c74a0dd9ebb0f3d283cd9952df9ac9abc2573c0cb187b51620e20365e2fbbc23"
    end

    on_intel do
      url "https://github.com/AndroidPoet/playconsole-cli/releases/download/v0.2.0/playconsole-cli_0.2.0_darwin_amd64.tar.gz"
      sha256 "df04ef00b615e0ec50a9879d74ec3f0a56e359a0e7b2f90d6db15b6e3cd9142b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AndroidPoet/playconsole-cli/releases/download/v0.2.0/playconsole-cli_0.2.0_linux_arm64.tar.gz"
      sha256 "ff9408eb5a1ad4cca7d4eb893ec0d9ef5bebe45d7c049be1ae06c14c0a6f92be"
    end

    on_intel do
      url "https://github.com/AndroidPoet/playconsole-cli/releases/download/v0.2.0/playconsole-cli_0.2.0_linux_amd64.tar.gz"
      sha256 "9428e1324e327fd7af2ef010ce9a0efb50848872f7dcb161edf975f9beed7529"
    end
  end

  def install
    bin.install "playconsole-cli"
    bin.install_symlink "playconsole-cli" => "gpc"
  end

  test do
    system "#{bin}/gpc", "version"
  end
end

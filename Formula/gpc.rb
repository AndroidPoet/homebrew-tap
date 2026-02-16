# typed: false
# frozen_string_literal: true

class Gpc < Formula
  desc "Fast, lightweight CLI for Google Play Console"
  homepage "https://github.com/AndroidPoet/playconsole-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AndroidPoet/playconsole-cli/releases/download/v0.1.0/playconsole-cli_0.1.0_darwin-arm64.tar.gz"
      sha256 "fe0221dfe092be035c90041c19736fce6e034b91f3fc5b9e7506ea841b1b7526"

      def install
        bin.install "playconsole-cli" => "gpc"
      end
    end

    on_intel do
      url "https://github.com/AndroidPoet/playconsole-cli/releases/download/v0.1.0/playconsole-cli_0.1.0_darwin-amd64.tar.gz"
      sha256 "89e8d7576343fc5f19c269178ee469fa72930209332f502fe5b8afd2cea8e526"

      def install
        bin.install "playconsole-cli" => "gpc"
      end
    end
  end

  test do
    assert_match "gpc is a fast", shell_output("#{bin}/gpc --help")
  end
end

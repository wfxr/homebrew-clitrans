# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Clitrans < Formula
  desc "Yet another command-line translator (Chinese <=> English)"
  homepage "https://github.com/wfxr/clitrans"
  url "https://github.com/wfxr/clitrans/releases/download/v0.3.2/clitrans-v0.3.2-x86_64-apple-darwin.tar.gz"
  sha256 "df3284bbd7e69092153788e9d3d625164e1be04a971d09fef96202fa130ff4b2"
  license "MIT/APACHE-2.0"
  version "0.3.2"

  def install
    bin.install "clitrans"
    zsh_completion.install  "completions/zsh/_clitrans"
    bash_completion.install "completions/bash/clitrans.bash"
    fish_completion.install "completions/fish/clitrans.fish"
  end
end

# vim: ft=ruby:

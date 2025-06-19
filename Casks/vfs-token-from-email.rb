cask "vfs-token-from-email" do
    version "20250619-111926"
    sha256 "ead6584405f4e105ac37ceff8b33d5d5f3547e52bf9d37797b2007b91c63084a"

    url "https://github.com/natbienetre/wordpress-customer-data/releases/download/automator-workflow-#{version}/automator-workflow-#{version}.tar.gz"
    name "VFS Token from Email"
    desc "Generate a VFS token from an email address"
    homepage "https://github.com/natbienetre/wordpress-customer-data"

    depends_on macos: ">= :high_sierra"
    depends_on formula: "jq"
    depends_on formula: "curl"

    service "automator.workflow", target: "#{name[0]}.workflow"
  end

Pod::HooksManager.register(:post_install) do |installer_context|
  Pod::Src::Downloader.new(installer_context).download
end

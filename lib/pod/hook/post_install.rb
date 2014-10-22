# require "cocoapods-downloader"

Pod::HooksManager.register(:post_install) do |installer_context|
  # target_dir = Pathname.new("#{Dir.home}/.cocoapods/src")

  # specs = installer_context.umbrella_targets.map(&:specs).flatten.uniq
  # specs.each do |spec|
  #   next if spec.source.nil? || spec.source[:git].nil?

  #   target_path = target_dir.join(spec.name)
  #   next if target_path.exist?

  #   source_url = spec.source[:git]
  #   Pod::Downloader.for_target(target_path, git: source_url).download
  # end

  Pod::Src::Downloader.new(installer_context).download
end

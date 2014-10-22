require "cocoapods-downloader"

module Pod
  module Src
    class Downloader
      def initialize(context)
        @context = context
      end

      def download
        specs.each do |spec|
          next if spec.source.nil? || spec.source[:git].nil?

          source_url = spec.source[:git]

          if use_ghq?
            download_by_ghq(source_url)
          else
            target_path = target_dir.join(spec.name)
            next if target_path.exist?
            download_by_pod_downloader(target_path, source_url)
          end
        end
      end

      private

      def specs
        @specs ||= @context.umbrella_targets.map(&:specs).flatten.uniq
      end

      def target_dir
        Pathname.new("#{Dir.home}/.cocoapods/src")
      end

      def use_ghq?
        !Pod.rc.nil? && Pod.rc["cocoapods-src_use_ghq"]
      end

      def download_by_ghq(source_url)
        system "ghq", "get", source_url
      end

      def download_by_pod_downloader(target_path, source_url)
        Pod::Downloader.for_target(target_path, git: source_url).download
      end
    end
  end
end

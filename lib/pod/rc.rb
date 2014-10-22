require "yaml"

module Pod
  class Rc
    def initialize(path)
      begin
        @config = YAML.load_file(path) || {}
      rescue
        @config = {}
      end
    end

    def [](key)
      @config[key]
    end
  end
end

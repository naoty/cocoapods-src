module Pod
  def self.rc
    return @rc if not @rc.nil?

    rc_paths.each do |rc_path|
      if File.exist?(rc_path)
        @rc = Rc.new(rc_path)
        break
      end
    end

    @rc
  end

  private

  def self.rc_paths
    ["#{Dir.home}/.podrc", "#{Dir.home}/.cocoapods/.podrc", "#{Dir.pwd}/.podrc"]
  end
end

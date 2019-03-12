namespace :embulk do
  namespace :test do
    desc "Download embulk.jar file"
    task :download_jar, [:version] do |task,args|
      LATEST_URL = "https://dl.embulk.org/embulk-latest.jar"
      require 'open-uri'
      require 'fileutils'
      version = args[:version]
      if version.nil?
        url = LATEST_URL
      elsif version =~ /\A\d+\.\d+\.\d+\z/
        url = "https://github.com/embulk/embulk/releases/download/v#{version}/embulk-#{version}.jar"
      else
        raise ArgumentError,"Invalid version format"
      end
      
      print "Downloading #{url} ..."
      FileUtils.mkdir_p "vendor/embulk"
      open(url) do |file|
        open("vendor/embulk/embulk.jar", "wb") do |out|
          out.write(file.read)
        end
      end
      puts "Done"

    end
  end
end

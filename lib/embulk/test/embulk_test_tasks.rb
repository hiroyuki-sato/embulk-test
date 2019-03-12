namespace :embulk do
  namespace :test do
    desc "Download embulk.jar file"
    task :download_jar do
      require 'open-uri'
      require 'fileutils'
      url = "https://dl.embulk.org/embulk-latest.jar"
      
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

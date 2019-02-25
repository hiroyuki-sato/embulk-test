namespace :embulk do
  namespace :test do
    desc "test"
    task :download_embulk do
      require 'open-uri'
      url = "https://dl.embulk.org/embulk-latest.jar"
      
      open(url) do |file|
        open("embulk.jar", "wb") do |out|
          out.write(file.read)
        end
      end

    end
  end
end

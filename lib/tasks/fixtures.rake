namespace :fixtures do
  desc "Looks for bad fixture files"
  task check_format: :environment do
    fixtures_dir = Rails.root.join("test", "fixtures")
    fixture_files = Pathname.glob("#{fixtures_dir}/**/*.yml")

    fixture_files.each do |file|
        fixture = YAML.load(IO.read(file))

        fixture.each_pair do |name, entry|
            puts "Bad fixture entry #{name}: #{entry.inspect} in fixture #{file}" unless entry.is_a? Hash
        end
    end
  end

end

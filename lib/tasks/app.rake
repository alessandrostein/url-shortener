namespace :app do

  task :update_page_info => :environment do
    Url.where('title is null').each do |url|
      page = MetaInspector.new(url.origin)
      url.title = page.title
      url.description = page.description
      url.save
    end
  end

end

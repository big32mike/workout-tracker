class Workout < ActiveRecord::Base
    belongs_to :user

    def slug
        self.name.downcase.gsub(' ', '-')
    end

    def self.find_by_slug(slug)
        self.all.find {|s| s.slug == slug}
    end

end

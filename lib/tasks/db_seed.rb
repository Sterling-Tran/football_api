namespace :db do
    namespace :seed do
      desc "seed player"
      task players: :environment do
        load Rails.root.join("db/seeds.rb")
        create_player
      end

      desc "seed matches"
      task matches: :environment do
        load Rails.root.join("db/seeds.rb")
        create_matches
      end
      desc "seed stadiums"
      task stadiums: :environment do
        load Rails.root.join("db/seeds.rb")
        create_stadium
      end
      desc "seed referees"
      task referees: :environment do
        load Rails.root.join("db/seeds.rb")
        create_referee
      end
    end
end

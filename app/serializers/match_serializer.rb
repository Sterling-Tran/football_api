class MatchSerializer < ActiveModel::Serializer
  attributes :id, :team1, :team2, :score1, :score2, :stadium_id
end

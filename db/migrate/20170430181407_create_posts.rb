class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :rating
      t.string :title

      t.timestamps null: false
    end

    2.times do
      Post.create!({
        rating: Faker::Number.number(1),
        title: Faker::RockBand.name,
      })
    end
  end
end

Factory.define :post do |f|
  f.title   Faker::Lorem.sentence
  f.body    Faker::Lorem.paragraphs.join
end

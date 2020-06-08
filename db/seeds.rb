# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Subject.create!(
  [
    {
      title: 'プログラミング1',
      weekday: 'Monday',
      periods: 1,
    },
    {
      title: '簿記',
      weekday: 'Wednesday',
      periods: 3,
    }
  ]
)

Teacher.create!(
  [
    {
      name: '田中正一',
      subject_id: 1,
    },
    {
      name: '鈴木太郎',
      subject_id: 2,
    }
  ]
)

statistics_time = Date.new(2020,9,7)
bookkeeping_time = Date.new(2020,9,9)

5.times do |n|
  Lecture.create!(
    title: "統計#{n+1}",
    date: statistics_time + (n*7),
    subject_id: 1,
  )
end

5.times do |n|
  Lecture.create!(
    title: "簿記#{n+1}",
    date: bookkeeping_time + (n*7),
    subject_id: 2,
  )
end
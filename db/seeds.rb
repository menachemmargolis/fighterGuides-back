# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Character.destroy_all
UserGuide.destroy_all

users = [
  {username: "Hasibul23", password_digest: "123", profile_image: "https://ca.slack-edge.com/T02MD9XTF-U01CRNE8X3M-0cc327fd8ec0-512"},
  {username: "Greg111", password_digest: "abc", profile_image: "https://ca.slack-edge.com/T02MD9XTF-U8H2RA3C1-643c8ce562ef-512"},
  {username: "Michelle45", password_digest: "456", profile_image: "https://ca.slack-edge.com/T02MD9XTF-U011WKXUXTK-5ce7733b96e2-512"}
]

users.each {|user| User.create(user)}


characters = [
    {name: "Ky Kiske",  grid_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpxb7QsjRtiQhNUO8BiUp9nXCLQm7hfDk6Kw&usqp=CAU", description: "A serious man who dedicates himself completely to his work, the people, and his morals. His love for justice and determination to help those less fortunate is reflected in all aspects of his life. On the other hand, this also means he can show rather extreme dislike for anything that disrupts the peace or breaks the rules. After taking his position as King, this enthusiasm shifted into a broader perspective, allowing him to see the world from a variety of viewpoints. This isn't to say, however, that he can't still come off as naïve and emotional at times.", detail_image:""},
    {name: "Sol Badguy", grid_image:"test grid" , description: "A blunt and short-tempered man.
    He only speaks when required, and uses as few words as he can get away with. He's not very good at explaining things, so he prefers to express himself with his aggressive behavior and attitude. While most see him as selfish and violent, those closest to him accept him for who he is.", detail_image:"test detail" },
    {name: "Ramlethal Valentine", grid_image:"test grid", description: "She is a 'Valentine,' a life form created in the image of humanity. In accordance with the orders from her mother implanted in her memories, she declared war against humanity. However, through her interactions with Sol and everyone, she came to know emotion, and eventually became an ally to mankind.", detail_image: "detail image"}
]

characters.each {|character| Character.create(character)}


user_guides = [
  {character_id: 1, user_id: 1, title: "Hasibul Guide", content: "jhasrjhaskhdkashdkjahsdkjhasdkjhasjkdhaskjdasjkhdajshdkjahsdkjhaskjdhakjshdkjahsdkjhajksdh", guide_image: "https://ca.slack-edge.com/T02MD9XTF-U01CRNE8X3M-0cc327fd8ec0-512", likes: 0},
  {character_id: 3, user_id: 1, title: "Greg Guide", content: "abc.jbv s.kdjv/sjdvb/skjvb/sJBF'euwi weu'ew[;,LDJHyudoerpguergpuergpwugpg,lfywefup   efwp    ewgiuwefgiufjshdvlshdvldS", guide_image: "https://ca.slack-edge.com/T02MD9XTF-U8H2RA3C1-643c8ce562ef-512", likes: 0},
  {character_id: 2, user_id: 3,title: "Michelle Guide", content: "456sdjahskdjhaksjdhakjshdkjahskdjhaskjdhkajshdkjahsdjkhaskjdhkashdkjahsdkjashdkjhaksdhjakjshdajkahskdha", guide_image: "https://ca.slack-edge.com/T02MD9XTF-U011WKXUXTK-5ce7733b96e2-512", likes:0}
]

user_guides.each {|guide| UserGuide.create(guide)}



puts "SEEDED 🌱🌱🌱🌱🌱🌱🌱🌱🌱🌱🌱🌱"
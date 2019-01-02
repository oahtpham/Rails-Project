# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# t.string :user_name
# t.string :full_name
# t.integer :age
# t.string :blog_color

# u1 = User.create(user_name: "oahtpham", full_name: "Thao Pham", age: 27, img_url: "https://media.licdn.com/dms/image/C4D03AQElaK3Pw6r77g/profile-displayphoto-shrink_200_200/0?e=1550707200&v=beta&t=51LLmR0ZGpNhAfbGZc4N3EqFsneFrmz0IzGix4L8ffw", bio: "Hey, live a little")
# u2 = User.create(user_name: "stephanietbui", full_name: "Stephanie Bui", age: 27, img_url: "https://media.licdn.com/dms/image/C4D03AQFskHLtgpaWTA/profile-displayphoto-shrink_800_800/0?e=1550707200&v=beta&t=Z6lUqPlAdt29rZ0nrL0EKM5W3Wxhxo6S_eXO87Dfr9M", bio: "You miss 100% of the shots you don't take")
# u3 = User.create(user_name: "jpham09", full_name: "Jessica Pham", age: 28, img_url: "https://media.licdn.com/dms/image/C4E03AQFBVbKmo6YctQ/profile-displayphoto-shrink_800_800/0?e=1550707200&v=beta&t=v3dADGh0i47rX4PPiurv74j3EkNG_18cFUGMnEK05eM", bio: "Austinite foodie")
# u4 = User.create(user_name: "paaauline", full_name: "Pauline Pham", age: 27, bio: "The more I see, the less I know")


# t.integer :user_id
# t.string :title
# t.string :genre

b1 = Blog.create(user_id: 1, title: "Random", content: 'This is a random blogpost.')
b2 = Blog.create(user_id: 1, title: "Frank's Open Letter", content: "Whoever you are, where ever you are… I’m starting to think we’re a lot alike. Human beings spinning on blackness. All wanting to be seen, touched, heard, paid attention to. My loved ones are everything to me here. In the last year or 3 I’ve screamed at my creator, screamed at clouds in the sky, for some explanation. Mercy maybe. For peace of mind to rain like Manna somehow. 4 summers ago, I met somebody. I was 19 years old. He was too. We spent that summer, and the summer after, together. Everyday almost. And on the days we were together, time would glide. Most of the day I’d see him, and his smile. I’d hear his conversation and his silence….until it was time to sleep. Sleep I would often share with him. By the time I realized I was in love, it was malignant. It was hopeless. There was no escaping. No negotiating with the feeling. No choice. It was my first love, it changed my life. Back then, my mind would wander to the women I had been with. The ones I cared for and thought I was in love with. I reminisced about the sentimental songs I enjoyed when I was a teenager.. the ones I played when I experienced a girlfriend for the first time. I realized they were written in a language I did not speak. I realized too much, too quickly. Imagine being thrown from a plane. I wasn’t in a plane though. I was in a Nissan Maxima, the same car I packed up with bags and drove to Los Angeles in. I sat there and told my friend how I felt. I wept as the words left my mouth. I grieved for them, knowing I could never take them back for myself. He patted my back. He said kind things. He did his best, but he wouldn’t admit the same. He had to go back inside soon. It was late and his girlfriend was waiting for him upstairs. He wouldn’t tell me for years. Now imagine being thrown from a cliff. No, I wasn’t on a cliff, I was still in my car telling myself It was gonna be fine and to take deep breaths. I took the breaths and carried on. I kept up a peculiar friendship with him because I couldn’t imagine keeping up my life without him. I struggled to master myself and my emotions. I wasn’t always successful.
That dance went on… I kept the rhythm for several Summers after. It’s Winter now. I’m typing this on a plane back to Los Angeles from New Orleans. I flew home for another marred Christmas. I have a window seat. It’s December 27 2011. By now I’ve written two albums, this being the second. I wrote to keep myself busy and sane. I wanted to create worlds that were rosier than mine. I tried to channel overwhelming emotions. I’m surprised at how far all of it has taken me. Before writing this I’d told some people my story. I’m sure these people kept me alive, kept me safe.. sincerely. These are the folks I wanna thank from the floor of my heart. Everyone of you knows who you are.. great humans. Probably Angels. I don’t know what happens now, and that’s alrite. I don’t have any secrets I need kept anymore. There’s probably some small shit still, but you know what I mean. I was never alone, as much as I felt like it.. As much as I still do sometimes, I never was. I don’t think I ever could be. Thanks, to my first love, I’m grateful for you. Grateful that even though It wasn’t what I hoped for and even though it was never enough, it was. Some things never are.. and we were. I won’t forget you. I won’t forget the Summer. I’ll remember who I was then I met you. I’ll remember who you were and how we’ve both changed and stayed the same. I’ve never had more respect for life and living than I have right now. Maybe it takes a near death experience to feel alive. Thanks, to my Mother. You raised me strong. I know I’m only brave because you were first.. so thank you. All of you. For everything good. I feel like a free man. If I listen closely.. I can hear the sky falling too.")
b3 = Blog.create(user_id: 2, title: "Jewels", content: "This is how you make jewelry.")
b4 = Blog.create(user_id: 2, title: "Cooking with a Sous Vide", content: "You stick the sous vide in water. Store your item in a plastic bag and place it in the pot of water. Voila, it's cooked. ")
b5 = Blog.create(user_id: 3, title: "Weddings in July", content: "Getting married in Austin in February will be a blast." )
b6 = Blog.create(user_id: 3, title: "San Francisco", content: "One of the best cities in the world.")
b7 = Blog.create(user_id: 3, title: "How To Make a Mean Steak", content: "Only good when medium rare.")
b8 = Blog.create(user_id: 4, title: "Salad Recipe", content: "Make salads at home because who loves paying $15 for leaves?")


c1 = Comment.create(user_id: 2, blog_id: 2, comment: "Absolutely love this!")
c2 = Comment.create(user_id: 3, blog_id: 2, comment: "Honestly makes me cry every time.")
c3 = Comment.create(user_id: 4, blog_id: 7, comment: "I can't wait to go home and try to make this!")

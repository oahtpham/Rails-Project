# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# t.string :user_name
# t.string :first_name
# t.string :last_name
# t.string :bio
# t.integer :age
# t.string :img_url

u1 = User.create(user_name: "oahtpham", first_name: "Thao", last_name: "Pham", age: 27, img_url: "https://media.licdn.com/dms/image/C4D03AQElaK3Pw6r77g/profile-displayphoto-shrink_200_200/0?e=1559174400&v=beta&t=VCQepsHMBNKEQlu45abE3PEPkXAw63bdp2MptCuB95o", music_url: "https://www.youtube.com/watch?v=BoEKWtgJQAU", bio: "Hey, live a little", password: "123")
u2 = User.create(user_name: "stephanietbui", first_name: "Stephanie", last_name: "Bui", age: 27, img_url: "https://media.licdn.com/dms/image/C4D03AQFskHLtgpaWTA/profile-displayphoto-shrink_800_800/0?e=1559174400&v=beta&t=WJGoF8CP0ojmcn-cxgnvvG1vWlao5lBRw1qjV6dQNIc", music_url: "https://www.youtube.com/watch?v=4zAThXFOy2c", bio: "You miss 100% of the shots you don't take", password: "123")
u3 = User.create(user_name: "jpham09", first_name: "Jessica", last_name: "Pham", age: 28, img_url: "https://media.licdn.com/dms/image/C4E03AQFBVbKmo6YctQ/profile-displayphoto-shrink_800_800/0?e=1559174400&v=beta&t=tan6yqSFfGRJ601TBWvcUgifU7zS5rrFA8P5_VKZx08", music_url: "https://www.youtube.com/watch?v=FGBhQbmPwH8", bio: "Austin-based foodie", password: "123")
u4 = User.create(user_name: "brendaruns", first_name: "Brenda", last_name: "Nguyen", age: 27, img_url: "https://media.licdn.com/dms/image/C5603AQGFDP-w2b3j5g/profile-displayphoto-shrink_800_800/0?e=1559174400&v=beta&t=xfJatdtwZsNO0SRv8QVE7xjdEro3kcGWAVVwE65g7aQ", music_url: "https://www.youtube.com/watch?v=A0fYKguHFcQ", bio: "The more I see, the less I know", password: "123")
puts "finished USERS"

# t.integer :user_id
# t.string :title
# t.string :genre

b1 = Blog.create(user_id: 1, title: "Phenomenal Woman By Maya Angelou", content: 'Pretty women wonder where my secret lies.
I’m not cute or built to suit a fashion model’s size
But when I start to tell them,
They think I’m telling lies.
I say,
It’s in the reach of my arms,
The span of my hips,
The stride of my step,
The curl of my lips.
I’m a woman
Phenomenally.
Phenomenal woman,
That’s me.

I walk into a room
Just as cool as you please,
And to a man,
The fellows stand or
Fall down on their knees.
Then they swarm around me,
A hive of honey bees.
I say,
It’s the fire in my eyes,
And the flash of my teeth,
The swing in my waist,
And the joy in my feet.
I’m a woman
Phenomenally.

Phenomenal woman,
That’s me.

Men themselves have wondered
What they see in me.
They try so much
But they can’t touch
My inner mystery.
When I try to show them,
They say they still can’t see.
I say,
It’s in the arch of my back,
The sun of my smile,
The ride of my breasts,
The grace of my style.
I’m a woman
Phenomenally.
Phenomenal woman,
That’s me.

Now you understand
Just why my head’s not bowed.
I don’t shout or jump about
Or have to talk real loud.
When you see me passing,
It ought to make you proud.
I say,
It’s in the click of my heels,
The bend of my hair,
the palm of my hand,
The need for my care.
’Cause I’m a woman
Phenomenally.
Phenomenal woman,
That’s me.')
b2 = Blog.create(user_id: 1, title: "Frank's Open Letter", content: "Whoever you are, where ever you are… I’m starting to think we’re a lot alike. Human beings spinning on blackness. All wanting to be seen, touched, heard, paid attention to. My loved ones are everything to me here. In the last year or 3 I’ve screamed at my creator, screamed at clouds in the sky, for some explanation. Mercy maybe. For peace of mind to rain like Manna somehow. 4 summers ago, I met somebody. I was 19 years old. He was too. We spent that summer, and the summer after, together. Everyday almost. And on the days we were together, time would glide. Most of the day I’d see him, and his smile. I’d hear his conversation and his silence….until it was time to sleep. Sleep I would often share with him. By the time I realized I was in love, it was malignant. It was hopeless. There was no escaping. No negotiating with the feeling. No choice. It was my first love, it changed my life. Back then, my mind would wander to the women I had been with. The ones I cared for and thought I was in love with. I reminisced about the sentimental songs I enjoyed when I was a teenager.. the ones I played when I experienced a girlfriend for the first time. I realized they were written in a language I did not speak. I realized too much, too quickly. Imagine being thrown from a plane. I wasn’t in a plane though. I was in a Nissan Maxima, the same car I packed up with bags and drove to Los Angeles in. I sat there and told my friend how I felt. I wept as the words left my mouth. I grieved for them, knowing I could never take them back for myself. He patted my back. He said kind things. He did his best, but he wouldn’t admit the same. He had to go back inside soon. It was late and his girlfriend was waiting for him upstairs. He wouldn’t tell me for years. Now imagine being thrown from a cliff. No, I wasn’t on a cliff, I was still in my car telling myself It was gonna be fine and to take deep breaths. I took the breaths and carried on. I kept up a peculiar friendship with him because I couldn’t imagine keeping up my life without him. I struggled to master myself and my emotions. I wasn’t always successful.

That dance went on… I kept the rhythm for several Summers after. It’s Winter now. I’m typing this on a plane back to Los Angeles from New Orleans. I flew home for another marred Christmas. I have a window seat. It’s December 27 2011. By now I’ve written two albums, this being the second. I wrote to keep myself busy and sane. I wanted to create worlds that were rosier than mine. I tried to channel overwhelming emotions. I’m surprised at how far all of it has taken me. Before writing this I’d told some people my story. I’m sure these people kept me alive, kept me safe.. sincerely. These are the folks I wanna thank from the floor of my heart. Everyone of you knows who you are.. great humans. Probably Angels. I don’t know what happens now, and that’s alrite. I don’t have any secrets I need kept anymore. There’s probably some small shit still, but you know what I mean. I was never alone, as much as I felt like it.. As much as I still do sometimes, I never was. I don’t think I ever could be. Thanks, to my first love, I’m grateful for you. Grateful that even though It wasn’t what I hoped for and even though it was never enough, it was. Some things never are.. and we were. I won’t forget you. I won’t forget the Summer. I’ll remember who I was then I met you. I’ll remember who you were and how we’ve both changed and stayed the same. I’ve never had more respect for life and living than I have right now. Maybe it takes a near death experience to feel alive. Thanks, to my Mother. You raised me strong. I know I’m only brave because you were first.. so thank you. All of you. For everything good. I feel like a free man. If I listen closely.. I can hear the sky falling too.")
b3 = Blog.create(user_id: 2, title: "Jewels", content: "This is how you make jewelry.")
b4 = Blog.create(user_id: 2, title: "Cooking with a Sous Vide", content: "Preparation & Set Up
One of the best parts of sous vide cooking is that you don’t need to do much to your food before cooking. Most meats, fish and vegetables only need salt and pepper to shine. You can certainly get creative with aromatics, but butter and marinades are not necessary — even lean meats will retain their moisture on their own.

To get started, simply clip the Anova Precision® Cooker to a large pot or container and fill with water above the minimum fill line on the stainless steel Anova sleeve. Preheat your water by setting the Anova to your desired temperature and hit the play button. It’ll beep when it’s ready.

Sous vide cooking is made even easier with the Anova recipes app — simply choose your recipe, prepare your ingredients, and hit “connect” on the app. It’ll set the time and temperature settings for you!

Packaging
The key to sous vide cooking is the “sous vide” (or “under vacuum”) part of the equation. Vacuum sealing foods prevents evaporation and allow for the most efficient transfer energy from the water to the food. To do so, simply place your seasoned food in a plastic bag and remove all of the surrounding air to create a vacuum seal. There are three ways to create this seal:

Use a vacuum sealer and specially designed bags. Foodsaver is a common, and affordable, brand.

Use the “water immersion” method. Place the food in a zipper lock bag and slowly lower the bagged food into a bowl of water, letting the pressure of the water press air through the top of the bag. Once most of the air is out of the bag, carefully seal it just above the water line.

Use zipper lock bags and suck the air out with a straw. This method is not recommended for raw meat, but you can use it for fruits and vegetables.

You can also sous vide certain foods in glass canning jars. While we don’t recommend using jars for meats or bulky vegetables, they make fabulous vessels for cooking beans, grains, and desserts like custards or cakes. You can learn more about sous vide cooking in jars on our blog.

Cooking Time and Temperature
Sous vide cooking is all about mastering time and temperature. These two factors determine the final texture and flavor of your dish. Selecting the correct cooking temperature is all about knowing your desired doneness.

Cooking time is less strict, but still important. Sous vide foods must cook long enough to reach their target temperature and (in certain cases) eliminate any potential bacteria. Many animal proteins have an upper limit for cooking times as well — after four hours or so, their structure begins to break down and turn mushy. So while you have a much larger window for cooking times in the Anova than in an oven, you still do need to pay a little bit of attention to the timeline.

Want more details? All of our recipes include time and temperature suggestions. We’ve also created a few time and temperature guidelines for common sous vide dishes, like steak, chicken breasts, and hamburgers.")
b5 = Blog.create(user_id: 3, title: "Agatha Christie", content: "You start into it, inflamed by an idea, full of hope, full indeed of confidence. If you are properly modest, you will never write at all, so there has to be one delicious moment when you have thought of something, know just how you are going to write it, rush for a pencil, and start in exercise book buoyed up with exaltation. You then get into difficulties, don’t see your way out, and finally manage to accomplish more or less what you first meant to accomplish, though losing confidence all the time. Having finished it, you know it is absolutely rotten. A couple of months later you wonder if it may not be all right after all." )
b6 = Blog.create(user_id: 3, title: "Rupi Kaur", content: "
Of course i want to be successful
but i dont crave success for model me
i need to be successful to gain
enough milk and honey to help those around me succeed ")
b7 = Blog.create(user_id: 3, title: "How To Make a Mean Steak", content: "Only good when medium rare.")
b8 = Blog.create(user_id: 4, title: "Salad Recipe", content: "
Like I said, part of the reason this salad is on such regular rotation in our house is because the ingredients are genuinely easy to keep stocked in your kitchen.  When you go grocery shopping for the week, just be sure to pick up a new bag of greens, and English cucumber, red onion and lemon.  Then the rest of the ingredients can be easily stored in your pantry/fridge for weeks or months at a time.  Here’s what you’ll need:

Fresh greens: I tend to usually go with a spring mix or bag of baby arugula for this salad, but any greens you have on hand will do.
English cucumber: I prefer these because they are less bitter and have minimal seeds, but any kind of cucumber will do.
Red onion: I love lots and lots of red onion in my salads, but feel free to use less or leave these out entirely if you prefer.  (Some sliced green onions would also be an alternative.)
Nuts: Pepitas (roasted and salted) are our go-to lately with this salad, which I love because they are perfectly crunchy, flavorful and inexpensive.  But when we feel like a splurge, toasted pine nuts are always a fave too.
Dressing: See below!")


c1 = Comment.create(user_id: 2, blog_id: 2, comment: "Absolutely love this!")
c2 = Comment.create(user_id: 3, blog_id: 2, comment: "Frank's words are poetry.")
c3 = Comment.create(user_id: 4, blog_id: 7, comment: "I can't wait to go home and try to make this!")

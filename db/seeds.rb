# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Arcana.create([
    {name: 'Major', description: 'The Major Arcana cards are the trumps, which are unsuited. Each card represents a major force to be taken quite seriously when appearing in divination.'},
    {name: 'Minor', description: 'The 56 Tarot cards of the Minor Arcana are divided into four suits: Wands, Pentacles (also called Coins), Cups, and Swords. Each suit has its general meaning, and each card of it brings its very own message in a divination.'}
])

Suit.create([
    {name: '', description: '', arcana_id: 1},
    {name: 'Wands', description: 'Wands correspond to Clubs in a regular deck of cards. Their Greek element is earth. They stand for everything earth-bound and concrete. In the four classes of feudal society, this suit is linked to that of agriculture, the peasants. When a Wands card appears in a reading, its message is concrete: something to do or something done, work and struggle but also their reward in palpable results.', arcana_id: 2},
    {name: 'Pentacles', description: 'Pentacles correspond to Diamonds in a regular deck of cards. Their Greek element is air. They stand for monetary matters, everything about economy, but also thought, communication and other things of the mind. In the four classes of feudal society, this suit is linked to that of trade, merchants and businessmen. When a Pentacles card appears in a reading, its message regards matters of economy, but also thoughts, study, plans - anything abstract, present in the mind but not yet in ones hands, either not yet or because of its nature never.', arcana_id: 2},
    {name: 'Cups', description: 'Cups correspond to Hearts in a regular deck of cards. Their Greek element is water. They stand for everything emotional - what we feel, whether or not we actually live it. In the four classes of feudal society, this suit is linked to that of the clergy, since the church and religion is all about emotions. When a Cups card appears in a reading, its message is always about things of an emotional nature: Worries, delights, temptations, hopes, affections, disappointments, and so on. Events or situations that primarily affect the heart.', arcana_id: 2},
    {name: 'Swords', description: 'Swords correspond to Spades in a regular deck of cards. Their Greek element is fire. They stand for forceful action, power, and firm decision. In the four classes of feudal society, this suit is linked to that of the aristocracy, the warriors and rulers. When a Swords card appears in a reading, its message is about action needed or already commenced, drastic change because of necessity or circumstance, ambition, competition, defense, and other things that demand resolve and bold activity.', arcana_id: 2}
])

# Major Aracana Cards
# Card.create({
#     name: '', 
#     full_meaning: '', 
#     :upright_meaning '', 
#     reversed_meaning: '', 
#     arcana_id: , 
#     suit_id: 
# })

Card.create(
    name: 'The Fool', 
    full_meaning: 'Something new is starting for the Subject which could be a new relationship, job or home.   This is likely to be an exciting time for them with lots of hope and anticipation for the future.  The Subject is so caught up in the buzz of it all that they may not be thinking as clearly as they should.
        The Subject should be receptive to change and doing things they wouldn’t normally.  In doing so they will learn about different sides of themself and even discover new things they want out of life.   The Subject will be feeling happy, confident and ready to face what is ahead of them.', 
    upright_meaning: 'The Fool card is numbered 0, which is considered to be a number of infinite potential. Consider him a blank slate, for The Fool has yet to develop a clear personality. He is the symbol of innocence - his journey to come will shape his character yet.
        To see the The Fool generally means a beginning of a new journey, one where you will be filled with optimism and freedom from the usual constraints in life. When we meet him, he approaches each day as an adventure, in an almost childish way. He believes that anything can happen in life and there are many opportunities that are lying out there, in the world, waiting to be explored and developed. He leads a simple life, having no worries, and does not seem troubled by the fact that he cannot tell what he will encounter ahead.',
    reversed_meaning: 'When you land on the reversed Fool in your reading, you can generally find his more negative characteristics being on display. It can mean that you are literally acting like a fool by disregarding the repercussions of your actions. Like the youth depicted in the card, you dont see how dangerous of a position you find yourself in. 
        A reversed Fool card can show that you are living in the moment and not planning for the future. The reversed Fool meaning serves as caution that you should be more aware so as not to be taken advantage of. Like the dog in the Rider Waite version, this card is here to alert you on anything that may sound too good to be true.', 
    arcana_id: 1, 
    suit_id: 1
).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-fool.jpeg'), filename: 'tarot-fool.jpeg')

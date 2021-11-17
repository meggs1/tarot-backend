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
    {name: 'Trumps', description: 'The Major Arcana are the unsuited cards of the Tarot deck. The 22 Major Arcana cards do not belong to any of the four suits of the Tarot: Wands, Pentacles, Cups, and Swords. Instead, each Major Arcana card represents a dignity all of its own: a character of great significance, a mythical component, or an event of crucial importance.', arcana_id: 1},
    {name: 'Wands', description: 'Wands correspond to Clubs in a regular deck of cards. Their Greek element is earth. They stand for everything earth-bound and concrete. In the four classes of feudal society, this suit is linked to that of agriculture, the peasants. When a Wands card appears in a reading, its message is concrete: something to do or something done, work and struggle but also their reward in palpable results.', arcana_id: 2},
    {name: 'Pentacles', description: 'Pentacles correspond to Diamonds in a regular deck of cards. Their Greek element is air. They stand for monetary matters, everything about economy, but also thought, communication and other things of the mind. In the four classes of feudal society, this suit is linked to that of trade, merchants and businessmen. When a Pentacles card appears in a reading, its message regards matters of economy, but also thoughts, study, plans - anything abstract, present in the mind but not yet in ones hands, either not yet or because of its nature never.', arcana_id: 2},
    {name: 'Cups', description: 'Cups correspond to Hearts in a regular deck of cards. Their Greek element is water. They stand for everything emotional - what we feel, whether or not we actually live it. In the four classes of feudal society, this suit is linked to that of the clergy, since the church and religion is all about emotions. When a Cups card appears in a reading, its message is always about things of an emotional nature: Worries, delights, temptations, hopes, affections, disappointments, and so on. Events or situations that primarily affect the heart.', arcana_id: 2},
    {name: 'Swords', description: 'Swords correspond to Spades in a regular deck of cards. Their Greek element is fire. They stand for forceful action, power, and firm decision. In the four classes of feudal society, this suit is linked to that of the aristocracy, the warriors and rulers. When a Swords card appears in a reading, its message is about action needed or already commenced, drastic change because of necessity or circumstance, ambition, competition, defense, and other things that demand resolve and bold activity.', arcana_id: 2}
])

# Major Aracana Cards
require 'open-uri'

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
).image_file.attach(url: open('https://tarotproject.s3.us-east-2.amazonaws.com/tarot-fool.jpeg'), filename: 'tarot-fool.jpeg')

# Card.create({
#     name: 'The Magician', 
#     full_meaning: 'The Magician is one tarot card that is filled with symbolism. The central figure depicts someone with one hand pointed to the sky, while the other hand points to the ground, as if to say "as above, so below". This is a rather complicated phrase, but its summarization is that earth reflects heaven, the outer world reflects within, the microcosm reflects the macrocosm, earth reflects God. It can also be interpreted here that the magician symbolizes the ability to act as a go-between between the world above and the contemporary, human world. 
#      On his table, the magician also wields all the suits of the tarot. This symbolizes the four elements being connected by this magician - the four elements being earth, water, air, and fire. The infinity sign on his head indicates the infinite possibilities of creation with the will.', 
#     upright_meaning: 'The Magician is the representation of pure willpower. With the power of the elements and the suits, he takes the potential innate in the fool and molds it into being with the power of desire. He is the connecting force between heaven and earth, for he understands the meaning behind the words "as above so below" - that mind and world are only reflections of one another. Remember that you are powerful, create your inner world, and the outer will follow.
#      When you get the Magician in your reading, it might mean that its time to tap into your full potential without hesitation. It might be in your new job, new business venture, a new love or something else. It shows that the time to take action is now and any signs of holding back would mean missing the opportunity of becoming the best version of yourself. Certain choices will have to be made and these can bring great changes to come. Harness some of the Magicians power to make the world that you desire most.' ,
#     reversed_meaning: 'When you obtain the Magician reversed, it might mean its time for you to implement some changes. While right side up, the Magician represents true power, the reversed Magician is a master of illusion. The magic that he performs is one of deception and trickery. You may be lured in by the showmanship of his arts, but behind that there may be an intention to manipulate for selfish gain. Getting this card might mean that there is someone who pretends to have your best interests at hand when the opposite is true. 
#      Consider whether this reversed the magician is in your circle, or perhaps might also represent your current state of emotions. It may mean you may become obsessed with power and that might lead to wrong, reckless decisions that will lead to your eventual downfall.', 
#     arcana_id: 1, 
#     suit_id: 1
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-magician.jpeg'), filename: 'tarot-magician.jpeg')


# Card.create({
#     name: 'The High Priestess', 
#     full_meaning: 'You have most likely encountered the High Priestess before, but in other forms - she can be seen in the archetypes of Persephone, Artemis, Isis and many more. When you encounter her, you will see her sitting on a cubic stone between the two pillars at Solomon’s Temple, Jachin, and Boaz. Jachin (right) is generally referred to as the Pillar of Establishment and Boaz (left) is the Pillar of Strength. The pillars also depict the duality of nature; masculine and feminine, good and evil, negative and positive.
#      The High Priestess location between the two suggests that it is her responsibility to serve as a mediator between the depths of the reality. She is the third pillar - the path between. She believes that both pillars are equal and there is knowledge to be learned in both worlds. You will also notice that she wears the crown of Isis which can mean that she is a believer of magic. The high priestess wearing of the solar cross denotes that she is connected to the season of the earth and the earth itself. The crescent moon at her feet is seen also in many depictions of the Virgin Mary, and means that she has a complete grasp over her emotion and the pomegranates refer to the ambition of the priestess.', 
#     upright_meaning: 'The meaning of the High Priestess is related with inner knowledge. Her appearance in a reading can signify that it is time for you to listen to your intuition rather than prioritizing your intellect and conscious mind. When the High Priestess shows up it can depict an archetype known as the divine feminine - the mysterious female that understands and holds the answers to the deep unknowns; religion, self, nature. She represents someone that is intuitive, and beginning to open to her or his spirituality. Meditation, prayer and new spiritual work is indicated. 
#      The card itself shows a night-time scene, meaning that the world in which she protects and guards is one that may at first seem frightening, but has the potential to lead us into the growth of the self. When she appears in a reading, she is calling to you to listen to her message, and follow her into your own depths. There is searching within yourself to be done for the answers that you seek. The answers to the questions you have are within, not without.', 
#     reversed_meaning: 'When it comes to the High Priestess reversed, it can mean that you are finding it difficult to listen to your intuition. It is time for you to meditate and try new approach, for at this moment, the rational approach will not work. Something has been telling you to follow your gut, but you may be ignoring the call. There is a lot of confusion around you, and your actions may feel contrary to what you know is right. You must never be afraid to ask questions of yourself that may illuminate a new path forward for you, one that is more authentic to your inner self and your individual values.', 
#     arcana_id: 1, 
#     suit_id: 1 
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-highpriestess.jpeg'), filename: 'tarot-highpriestess.jpeg')

# Card.create({
#     name: 'The Empress', 
#     full_meaning: 'The Empress depicts a woman sitting on a throne. From the abundant nature that surrounds her, we can assume that this woman represents the Earth Mother archetype, a goddess of fertility. Her world is ruled by venus which means that there is complete love, harmony, fertility and luxury by the grace of this goddess. The woman herself has blonde hair crowned with stars, signaling her divine connection with the mystical realm. She is dressed in a pomegranate-patterned robe that represents fertility, and she is seated on cushions embroidered with a venus sign. She is surrounded by an enchanting green forest with a river streaming through it. The Empress brings abundance and blessings in the readings of those she meets.', 
#     upright_meaning: 'The Empress shows us how deeply we are embedded to our femininity. Femininity could be associated with fertility, expression, creativity and nurturing among many other aspects. It therefore calls you to connect with beauty and bring happiness to your life. Understand yourself and get in touch with your sensuality so that you can attract life circumstances to bring happiness and joy. She is a signal that be kind to yourself, to take care of yourself.
#      The Empress is also a strong indication of pregnancy and motherhood. You can look for other cards to confirm if this is truly pregnancy, or rather just an indication of a motherly, nurturing and caring attitude. The Empress card could also mean the birth of a new idea, business or project on your life. Owing to the good fortune that surrounds this card, you can be sure that such situations and projects would end successfully in your life. Discover and bring forth those ideas that have been clinging to you and make sure that you devote yourself towards accomplishing them. This card is a sign that they are going to be successful, and well taken care of. The Empress, as the archetype of the mother earth, also encourages you to spend time interacting with nature, the mother of all of us.', 
#     reversed_meaning: 'The Empress reversed indicates that you have lost too much of your own willpower and strength because you have started placing too much effort and concern to other people’s affairs. While the Empress nature is of showering her loved ones with attention and care, this can sometimes go overboard. You might be neglecting your own needs, or even smothering the ones you love with your well-intentioned actions.
#      In a role reversal, perhaps a reversed Empress is finding her way into your life; it could also mean that you are relying on others to take care of you, and make decisions for you. You need to work towards removing this influence on your life, and build confidence in your own actions. Always try as much as you can to ensure that you solve matters on your own.', 
#     arcana_id: 1, 
#     suit_id: 1
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-empress.jpeg'), filename: 'tarot-empress.jpeg')

# Card.create({
#     name: 'The Emperor', 
#     full_meaning: 'In the Emperor tarot card, a stoic ruler figure can be seen on his throne, which is adorned with the heads of four rams, representing his astrological sign - Aries. In one hand, he carries a scepter, representing his reign and his right to rule, and in the other an orb, a symbol of the kingdom that he watches over. The long beard of the emperor represents his vast experience; over time he has learned much about what it takes to rule, to establish power, authority and complete order for the benefit of his people.
#      Behind him, the barren mountains shows his determination, his ambition for greater heights and his leadership capability. Contrast this with his complement, the Empress, whose flowing fields are filled with nurturing kindness. The Emperor instead rules with grit, strength and force.', 
#     upright_meaning: 'It’s all about control when it comes to the Emperor, for this card means authority, regulation, organization and a fatherliness. The Emperor represents a strategic thinker who sets out plans that he must see through. He is a symbol of the masculine principle - the paternal figure in life that gives structure, creates rules and systems, and imparts knowledge. Where the Empress has desire for their kingdom is to create happiness, the emperor desires to foster honor and discipline. He guides with a firm hand, following the calling of the crown above all else. Though he is a ruler, he understands that to reign is also to serve - thus he acts rationally and according to what is for the greater good of the kingdom.    
#      To see him in a reading presents a chance to grow in terms of the goals that you have set for yourself. It presents a successful future as long as you pursue your goals similar to the fashion that the Emperor does, methodically, and strategically.
#      When you see him in a reading, a possible interpretation is that you could be put in charge of something important. It could be a position at work or in any kind of organization or institution that desperately needs order and a clear decisive mind. You may be called to act in the place of the Emperor, using his wisdom to bring clarity to the project.', 
#     reversed_meaning: 'The Emperor reversed is a sign of abused authoritative power. In your social life, it can manifest in the overreach of power from a father figure or a possessive partner. In career readings, it could be coming from a superior. It presents a man who wants to take control of your actions and makes you feel powerless.  It could also be that you are playing the part of a weak ruler, hatching a plan to avoid the tasks that come with having responsibility. Perhaps you aspire for a career that is more flexible than one that is governed by strict rules.
#      Lack of self-control and inability to handle situations can be represented by the Emperor on a personal level. When he is reversed, the structures, rules and systems that he creates are no longer working. His desire to inspire higher principles in his kingdom have turned to ruthlessness, tyranny and rigidity. He seeks to dominate, forgetting his call from the crown to do what is best for his people, fearing only for his loss of control and thus creating suffering.', 
#     arcana_id: 1, 
#     suit_id: 1
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-emperor.jpeg'), filename: 'tarot-emperor.jpeg')

# Card.create({
#     name: 'The Hierophant', 
#     full_meaning: 'The card depicts a religious figure that sits in a rather formal environment characteristic for a church. He is wearing three elaborate vestments which are designated to represent the three different worlds. His right hand is properly raised in an act of benediction, a sign of blessing – it’s the same hand that the Magician has raised. In his other hand, he carries a triple cross, which is associated traditionally with the pope. Each of the horizontal bars in the cross are thought to represent the Father, the Son and the Holy Ghost. Beneath him, two acolytes are seated, representing the transfer of sacred knowledge within institutions. Through these acolytes, the card also comes to represent following the path to knowledge and education.
#      This card is also known as the High Priest in certain decks - as well as the Pope. He is acting as the masculine counterpart of another card which is known as the High Priestess. This card is ruled by Taurus. ', 
#     upright_meaning: 'To see the Hierophant in a reading is to embrace the conventional, for it suggests that you have a certain desire to actually follow a process which has been well established. It also suggests that you want to stay within certain conventional bounds of what could be considered an orthodox approach. So, instead of being innovative, you will be adapting to certain beliefs and systems which are already put in place and are existing.
#      The Hierophant card suggests that it’s better for you to follow social structures which are established and have their own traditions. You might be involved in certain ceremonies, rituals or other religious trappings, for instance. When it comes to tarot readings, this particular card is most commonly representative of institutions as well as their core values. This is a sign that shows that you need to conform to the already existing set of rules and situations which are fixed already.', 
#     reversed_meaning: 'When you see the Hierophant in reverse, it may mean that you are feeling particularly restricted and even constrained from too many structures and rules. As a result, you have lost quite a lot of control as well as flexibility in your life. You have a particularly strong will and desire to go ahead and regain control as well as to break free from the shackles of convention. You are tempted to try unorthodox approaches or to function in a way which defies social ties and norms.
#      The Hierophant reversal meaning is mostly about questioning certain traditions and making sure that whatever it is that you do is the right thing for you in this certain moment.', 
#     arcana_id: 1, 
#     suit_id: 1
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-hierophant.jpeg'), filename: 'tarot-hierophant.jpeg')

# Card.create({
#     name: 'The Lovers', 
#     full_meaning: 'In the Lovers card, the man and the woman in the image are being protected and blessed by an angel above. The couple seems secure and happy in their home, which appears to be the Garden of Eden. The fruit tree with the snake behind the woman is a reference to that story, which tells of humanitys fall into temptation and into the realm of flesh and sensuality. The angel depicted here is Raphael, the angel of air - who is of the same element of the zodiac sign that governs this card: Gemini. Air is associated with mental activity, and communication in particular, which is the foundation for healthy relationships. His blessing seems to give this card a sense of balance and harmony, the symbolization of union in a grand and cosmic sense between two opposing forces.', 
#     upright_meaning: 'The primary meaning within the Lovers is harmony, attractiveness, and perfection in a relationship. The trust and the unity that the lovers have gives each of them confidence and strength, empowering the other. The bond that they have created is very strong, and it can indicate that the two are joined in marriage, and other close and intimate relationships.
#      Another meaning behind the lovers card is the concept of choice - a choice between things that are opposing and mutually exclusive. This could be a dilemma that you need to think about carefully and make the best decision for your situation.
#      A more personal Lovers meaning that can apply to individuals is the development of your own personal belief systems, regardless of what are the societal norms. We see this as a development from the Hierophant, who made decrees and passed on his knowledge through a standardized system. This is one of the times when you figure out what you are going to stand for, and what your philosophy in life will truly be. You must start making up your mind about what you find important and unimportant in your life. You should be as true to yourself as you can be, so you will be genuine and authentic to the people who are around you.', 
#     reversed_meaning: 'The Lovers reversed can point to both inner and outer conflicts that you are dealing with. The disharmony can make daily life difficult and could be putting pressure on your relationships. You should take time to think about what you are punishing yourself for, so you can fix them or let them go. At this time, you should also think about your personal values and belief system to make sure that they are aligned with what you want from your life.
#      A break in communication could be another possible interpretation. The foundation for your relationships may be cut off, creating an imbalance between you and your partner or loved ones. The unity normally present within the card has become lopsided. 
#      The Lovers reversed can also indicate that you have been avoiding responsibility for your actions. You could have made a decision that was based on your desire for immediate gratification but are now blaming others for the consequences that are catching up to you. So, you need to make amends or let go of the past and make better decisions in the future.', 
#     arcana_id: 1, 
#     suit_id: 1
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-lovers.jpeg'), filename: 'tarot-lovers.jpeg')

# Card.create({
#     name: 'The Chariot', 
#     full_meaning: 'The Chariot tarot card depicts a figure sitting inside a vehicle that is being driven by two black and white sphinxes. The whole card has a bit of a celestial influence; the figure sits underneath a blue canopy adorned by white stars. On his shoulders, he carries the sign of the crescent moon, representing the spiritual influence under which he is guided. On his head sits a crown, meaning that he is enlightened, and that his will is pure. Emblazoned on his chest is a square, denoting the element of earth, of the material world, which grounds him and his actions.
#      The sphinxes are colored in black and white, a symbol of opposing forces that the charioteer must learn to control. Here they are calm, but they frequently get into scuffles as they seem to want to move in different directions. His task is to guide these sphinxes towards a destination, one that is marked by the cosmic forces that he represents.
#      The Chariot is linked to the Cancer zodiac sign.', 
#     upright_meaning: 'The Chariot tarot card is all about overcoming challenges and gaining victory through maintaining control of your surroundings. This perfect control and confidence allows the charioteer to emerge victorious in any situation. The use of strength and willpower are critical in ensuring that you overcome the obstacles that lie in your path. The Chariots message comes to make you stronger as you strive to achieve your goals.
#      The key message that he brings to you is that you must maintain focus, confidence, and determination through a process that will be full of winding turns and detours. If you have a plan or a project that you seem not to be sure about, the Chariot shows that you should pursue the plan with a structured and ordered approach. Your boldness will ensure that you achieve all that you should in this goal.
#      In the Chariots quest for his goal, he may display some behavior that he has never seen within himself before - competition and a desire to succeed has perhaps brought out a more aggressive part of his personality. Aggression is a natural part of human nature, and the Chariot reminds you that it can also be used to help you take charge of your situation, but also must be reined in so that it does not hinder your way forward. ', 
#     reversed_meaning: 'The reversed Chariots appearance in a reading can help you become aware of both your aggression, and your lack of willpower. It may either be saying that you are lacking in focus, motivation or direction, or that you are being warped by your obsession with your goals. In the former case, let the Chariot be a reminder that you can emerge victorious as long as you can gather the courage to do so. In the latter, your impulses may be another factor that you must rein in. To see the Chariot in reverse may suggest that you need to come to terms with the fact that you cannot always be in control.
#     The Chariot reversal meaning can also be an indication of lack of control and direction over your life. You are at the mercy of the opposing forces and the obstacles, and cannot seem to muster the strength to take over. You are taking everything lying down, and life is dragging in any direction that it pleases. It should serve as a wakeup call and reminder that you will need to tighten some loose ends and take charge of your destiny.', 
#     arcana_id: 1, 
#     suit_id: 1
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-chariot.jpeg'), filename: 'tarot-chariot.jpeg')

# Card.create({
#     name: 'Strength', 
#     full_meaning: 'In this tarot card, you will see a woman who calmly holds the jaws of a fully grown lion. Despite the fact that the lion looks menacing and strong, the woman seems to have dominion over it. What is captivating is how gracefully she controls the lion. She is calm and collected, which is representative for being in control and disciplined especially in times of great adversities.
#      The fact that she is also holding the jaws of a lion also shows that she has courage. Her control of the lion without being too rough shows love and compassion. The blue background over the mountains shows stability and the kind of calmness that comes with being stable.    
#      The lion is a symbol of courage, passion and desire which are very much part of the human feelings that are necessary for survival. But if these feelings are not put in check can lead to our eventual destruction.', 
#     upright_meaning: 'When you get the Strength card in an upright manner during your tarot reading, then it shows that you have inner strength and fortitude during moments of danger and distress. It shows that you have the ability to remain calm and strong even when your life is going through immense struggle. It also shows that you are a compassionate person and you always have time for other people even if its at your own expense.
#      Getting the strength card means that you are a very patient individual who is likely to accomplish anything that they put their mind to. Your resilience will greatly aid you, and your fearlessness means that you should have no issues speaking your mind. This card also indicates this kind of compassion will always be rewarded with having a lot of stability in your life either presently on in the near future.', 
#     reversed_meaning: 'An upside down Strength card can mean that you are (or about to) experience an intense anger or fear in your life. You seem to be lacking the inner strength that this card normally represents, meaning you might be experiencing fear, and a lack of conviction and confidence in your own abilities. This can mean that you have forgotten all about your passions and the kind of joy, happiness, and fulfillment that came with doing what you love. 
#      A reversed strength card in a reading might also mean that one is experiencing depression because of a number of reasons and because of that, it is draining all of the happiness from their lives.
#      One might end up being withdrawn from society because of the unhappiness or depression since they may feel people are the reason why they are so sad. It can also be a sign of jealousy, especially when everyone seems to be happy or excelling in every aspect of life while you are stagnating. This card indicates that you must learn to gain confidence in order to re-harness your inner strength.', 
#     arcana_id: 1, 
#     suit_id: 1
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-strength.jpeg'), filename: 'tarot-strength.jpeg')

# Card.create({
#     name: 'The Hermit', 
#     full_meaning: 'The Hermit depicts an old man standing alone at the peak of the mountain while holding a lantern in one of his hands and a staff on the other. The mountain denotes accomplishment, development, and success. The hermit tarot card refers to the level of spiritual knowledge that he attained, and that he is ready to impart that knowledge to everyone. There is also a deep commitment he has to his goal and a solid awareness of the path that he is taking. Inside the lantern, you will notice a star with 6 points which is also known as the Seal of Solomon. This symbol represents wisdom. The staff that he holds depicts authority and power.', 
#     upright_meaning: 'The Hermit is a seeker for the knowledge that comes from within. A lonely wanderer in the path of the night, he searches for that which can only be gained with long periods of solitude - the inner voice. To hear it, he must disconnect from the crowds whose voices and desires threaten to overcome his own. He walks through the dark night of his unconscious, guided only by the low light of the northern star, with his destination being his home, his self.
#      You are currently contemplating that you need to be alone. Never be afraid to take this chance to reflect, as it could help you clear your mind of all the clutter that comes with everyday life. The Hermit may also refer to your effort in taking action that is authentic and aligned with your true self. You are perhaps searching your inner soul for guidance on what is right, and where your next steps are to be.
#      The hermits appearance in a reading can also denote the appearance of someone who will come to your life that will be your mentor.', 
#     reversed_meaning: 'When reversed, you are perhaps in a situation where you would like to be alone; there is nothing wrong about that. However, there is a possibility that your seclusion may become harmful to both yourself and others. Though the Hermit sets forwards with noble intentions to search for his inner truth, his path inward may also be filled with great danger. Going inward may lead to madness and the abyss, for the unconscious is filled with images that he may not yet understand, lurking and waiting to lure you ever inside. Like a man that gets lost in his own dreams, the hermit may find himself stuck in a world of his own, alone, trapped, unreal. You must learn to balance your need for truth with connection to your fellow human.
#      When it comes to work, the hermit reversal meaning refers to your preparedness to get to the bottom of something that has been troubling you for quite some time now. There is searching to be done, and it will be your responsibility to ask the question that will allow the other people to understand the circumstances.', 
#     arcana_id: 1, 
#     suit_id: 1
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-hermit.jpeg'), filename: 'tarot-hermit.jpeg')

# Card.create({
#     name: 'The Wheel of Fortune', 
#     full_meaning: 'The Wheel of Fortune is one of the most highly symbolic cards in the deck, filled with signs that each have its own meaning. At the center of the card, lies a giant wheel, covered in esoteric symbols. There are different creatures that surround the wheel; the angel, the eagle, the bull and the lion. They are related to four fixed signs in the zodiac - leo, taurus, scorpio and aquarius. These four animals are also representatives for the four evangelists in Christian traditions, which is perhaps the reason that they are all adorned with wings.
#      The books that each of the creatures hold represents the Torah which communicates wisdom and self-understanding. The snake indicates the act of descending into material world. On the wheel itself, rides a sphinx that sits at the top, and what appears to be either a devil, or Anubis himself arising at the bottom. These two Egyptian figures are representative of both the wisdom of the gods and kings (in the case of the sphinx) and the underworld (Anubis). They are rotating forever, in a cycle, and suggests that as one comes up, the other goes down.', 
#     upright_meaning: 'The Wheel of Fortune turns evermore, seemingly to communicate that life is made up of both good and bad times, and that the cycle is one that we cannot control. It is something that is subjected to both kings and workers, and that nobody on earth can avoid what is fated. When you have good moments in your life, make sure that you enjoy to the fullest, for what comes up must always go down. The same is true in reverse - when you are in a bad situation, things will eventually become better again.     
#      Greater forces that are outside of human control are at work here. The same forces that govern the changing of the seasons, or the rising and setting of the sun is also the master of luck and the fate of individuals. Where it lands is as random as chance - you may find yourself at either the top or bottom, but remember that no matter what the outcome it may not last for very long, for the wheel always turns.', 
#     reversed_meaning: 'When the wheel is reversed, it means that luck has not been on your side and misfortunes have been following you. When its associated with this card, you must understand that these are due to external influences that you cannot control. Like the wheel, our luck and our fate is always in motion, and sometimes we are on the bottom. Be assured that the wheel will turn again, and you will be okay again soon. 
#      What you should not do however, is cling to the illusion of control. Perhaps in this turn of the wheel, the lesson is to learn to let go and release. There are things that cannot be moved by human will and action alone. When we do not let go, it can bring only more suffering, for you may blame yourself for actions that could not have altered the situation. When we learn to accept, we also learn to forgive ourselves. We learn to move on, and move forward - and eventually, we learn that this feeling of acceptance can push the wheel again forward, and move it towards a new cycle.', 
#     arcana_id: 1, 
#     suit_id: 1
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-wheeloffortune.jpeg'), filename: 'tarot-wheeloffortune.jpeg')

# Card.create({
#     name: 'Justice', 
#     full_meaning: 'The Justice tarot card is a symbol of truth, fairness, and law. As she sits in her chair, the scales in her left hand represent how intuition should balance logic. She symbolizes impartiality with the double-edged sword in her right hand. The clarity in thought which is required to dispense justice are symbolized by the square on the crown she wears. Behind her, there is a purple cloak and standing grey pillars. Beneath her red cloak, which is held together by a clasp, she shows the tip of a white shoe. This is a spiritual reminder that what she delivers are the outcomes of their actions.', 
#     upright_meaning: 'Justice is about karma, and if you’ve been putting forth the effort, love and romance will be coming your way. If you’ve been kind, loving and supportive, your relationships will be a mirror of what you’ve been giving to others. If you’ve been single, your loving and positive disposition will make you especially attractive to new potential romances.
#      Because this card is all about the law of cause and effect, make sure you have been treating your partner fairly. Watch out for resentment and defensiveness, and ensure that conflicts in your relationships are handled with respect and trust in your other half. Compromise and understanding is needed now. Sometimes this card is also about being tactful, and expressing your frustrations in a way that are mindful of your partner’s feelings. As long as issues hare handled with honesty and good faith, your relationship will thrive.', 
#     reversed_meaning: 'A reversed Justice tarot card could indicate various things. One Justice reversal meaning is to show you are living in denial. You are not willing to accept the consequences of your actions or others. You are running from your guilt. You must however, be aware that these are actions that are in the past. Your future depends on your actions today - and what you will do to tip the scales in balance again. How can you make up for your wrongs? Taking action gives you a chance to change and stop judging yourself. In legal matters, this could represent an unfair outcome of a case that you will not accept.', 
#     arcana_id: 1, 
#     suit_id: 1
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-justice.jpeg'), filename: 'tarot-justice.jpeg')

# Card.create({
#     name: 'The Hanged Man', 
#     full_meaning: 'In this card, it depicts a man who is suspended upside-down, and he is hanging by his foot from the living world tree. This tree is rooted deep down in the underworld, and it is known to support the heavens. It is believed that the hanging man is actually positioned there by his own free will. We believe this because of the serene expression which is on his face. His right foot is bound to the branches, but his left foot remains perfectly free. At the same time, he is holding his hands behind his back in a way which forms an inverted triangle. His wearing of red pants are a representation of the physical body and human’s passion, while the blue that he wears in his shirt are representative of calm emotions, a color combination that is commonly seen in saints. His intellect is symbolized by the yellow color of his shoes, hair and halo.', 
#     upright_meaning: 'The hanged man understands that his position is a sacrifice that he needed to make in order to progress forward - whether as repentance for past wrongdoings, or a calculated step backward to recalculate his path onward. This time he spends here will not be wasted, he does this as part of his progression forward. His upside down state can also symbolize the feeling of those that walk a spiritual path, for they see the world differently. Where there are others that do not understand the need to sacrifice, you see it differently. This is a natural course of action for you as you walk the path alone.
#      The Hanged Man card reflects a particular need to suspend certain action. As a result, this might indicate a certain period of indecision. This means that certain actions or decisions which need to be properly implemented are likely to be postponed even if there is an urgency to act at this particular moment. In fact, it would be ultimately the best if you are capable of stalling certain actions in order to ensure that you have more time to reflect on making critical decisions, this will ultimately be the best.', 
#     reversed_meaning: 'The reversal meaning of the Hanged Man card represents a very specific period of time during which you feel as if you are sacrificing a significant amount of time while getting nothing in return. You might have felt as if certain things are at a state of an absolute standstill without any particular resolution or movement. It’s as if you are putting your entire effort and attention into something but nothing turns out as it should.', 
#     arcana_id: 1, 
#     suit_id: 1
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-hangedman.jpeg'), filename: 'tarot-hangedman.jpeg')

# Card.create({
#     name: 'Death', 
#     full_meaning: '
#     Here, we see Death riding a beautiful white horse while holding up a black flag with a white pattern. It is portrayed as a living skeleton, the bones being the only part of the human body existing after death. He wears armor, which gives him his invincibility - signaling that no one can destroy Death. The white horse that he rides stands for purity, as Death purifies everyone. Beneath him, all classes of humans lie in the dirt - a king, and a pauper, meant to remind us that death does not differentiate between class, race, gender.', 
#     upright_meaning: 'Death is one of the most feared cards in a Tarot Deck, and it is very misunderstood. Many people avoid mentioning this card because it has that much power. Most times, people take the name of the card literally. However, the real meaning within the Death card is one of the most positive in the whole deck.
#      The Death card signals that one major phase in your life is ending, and a new one is going to start. You just need to close one door, so the new one will open. The past needs to be placed behind you, so you can focus your energy on what is ahead of you.
#      Another meaning is that you are going to go through a major change, transition, or transformation. The old version of you needs to ‘die’ to allow the new you to be created. This can be a scary time for you because you may be unsure of what will happen in the future. Even if you are scared, you should welcome the change because you are opening the door to new life events.
#      Death can also mean that you need to let go of any unhealthy attachments that you have in your life. This is an important part of life, so learning to keep moving forward is one of the lessons Death teaches us.', 
#     reversed_meaning: 'The Death reversal meaning is still about change, but that you have been resisting it. You could be worried about letting go of the past, or you could not be sure of the changes that you need to make to go forward. Resisting the change and holding onto the past can limit your future, which can cause you to feel like you are in limbo. You should take some time to assess the ways that you have been approaching changes in your life. You may find you have been halting the changes that you need due to fears of the unknown. While you can still be afraid, you should trust that you are taking the right steps and move forward. Life moves on, so fighting passing time is only going to leave you with regrets. Death does not have to be a card of regret, especially if you heed its warning.', 
#     arcana_id: 1, 
#     suit_id: 1
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-death.jpeg'), filename: 'tarot-death.jpeg')

# Card.create({
#     name: 'Temperance', 
#     full_meaning: 'On the Temperance card, there is an angel with wings, whose gender is not immediately obvious, which suggests that there is a balance between the sexes. One foot of the angel is in water, to represent the subconscious, while the other foot is on dry land, a representation of the material world. On her robe, there is a square, which has a triangle inscribed inside, another echo of the tangible earth in union with the holy trinity. She holds two cups in a manner where she can mix the waters, which represent the super and subconscious minds. The water flows between them, suggesting union and infinity.
#      Everything about this card represents balance, the perfect harmony that comes from the union of dualities. Her advice is to test any new waters, before jumping into the deep end.', 
#     upright_meaning: 'In moments where there is anxiety or great stress, you have been able to remain calm throughout. You are a person who has mastered the art of not letting things get to you, and this allows you to achieve much progress in all areas you seek out to explore. The Temperance tarot card suggests moderation and balance, coupled with a lot of patience. Where this card appears, there is the suggestion that extremity in any situation is to be avoided.
#      The Temperance card implies that you have a clear vision and know what you want to achieve. This is an indication of higher learning, which is a critical attribute in the journey of life. It reflects that you have found peace with what you are doing and everything is unfolding as it ought to. The Temperance card, in relation to other people, shows that you are able to adapt and work in harmony with your community, your coworkers and your loved ones. Your calmness in all matters gives them comfort and puts them at ease.
#      Temperance may also indicate a time to evaluate and re-examine the priorities you have chosen. This will help you create a balance between your outer and inner self. At the end of it all, you will find greater purpose and meaning in your actions, for her message is that we cannot live fully in either. ', 
#     reversed_meaning: 'Temperance in reversed is a reflection of something that is out of balance and may be causing stress and anxiety. The real meaning of the Temperance card can be deciphered using the other cards in the spread to identify areas where this imbalance is being caused. A Temperance in reversal may also be used as a warning;  if you take a certain path, it would lead to turbulence and excess.
#      Lack of a long-term plan or vision may also be the Temperance reversal meaning. This creates a lack of purpose for you, leaving you feeling lopsided as you search here and there for what you should be doing. You must reflect and think carefully about what needs to change. Temperance reminds us that all things are only good in moderation, and that we must examine in which aspects of our lives we are breaking the balance.', 
#     arcana_id: 1, 
#     suit_id: 1
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-temperance.jpeg'), filename: 'tarot-temperance.jpeg')

# Card.create({
#     name: 'The Devil', 
#     full_meaning: 'This card shows the Devil represented in his most well-known satyr form, otherwise known as Baphomet. Along with being half goat and half man, the devil has bat wings and an inverted pentagram on his forehead. He is standing on a pedestal, to which are chained a nude man and woman, as if to show that he has dominion over them.
#      Both the man and the woman have horns, as if to show that the more time they spend with the Devil, the less human they become. The chains make it appear as though the devil has taken them captive. The man has a flame on his tail while a woman has a bowl of grapes on her tail, which symbolizes their addiction to power and finer things in life, respectively. 
#      Looking closely, both the man and the woman don’t look happy.  Their individual power has been taken from them, leaving them exposed and ashamed in their nakedness.', 
#     upright_meaning: 'Getting the devil card in your reading shows that you have feelings of entrapment, emptiness and lack of fulfillment in your life. It might also mean that you are a slave to materialism and opulence and no matter how hard you try, you just can’t seem to shake off the feeling of wanting to indulge in luxurious living.
#      You might be aware that this kind of lifestyle is leading you down the rabbit hole, but you have that feeling of not having any form of control over your actions or urges.
#      Addiction to substances or material pleasures can also be the reason for your feelings of powerlessness and entrapment. In situations such as these, you may feel as though you are a slave, unable to control your impulses or willpower to direct yourself towards something other than the satisfaction of these desires. ', 
#     reversed_meaning: 'The upside down meaning of the Devil card can be the moment when an individual becomes self-aware and breaks all of the chains that come with addiction and poor habits. It might be because they are tired of running in circles and are in need of change. 
#      But one thing is usually clear – breaking off these chains, especially those of addiction is never easy. So, one has to be prepared to make the necessary changes that might initially seem painful to make the adjustments that will pay off in the end by being able to find your true self again. 
#      Self-assessment is called for in this case and the individual needs to take some time and list all of the things that they need to get rid of. And once that has been done, and then it would be time for them to embark on the difficult journey of self-improvement.', 
#     arcana_id: 1, 
#     suit_id: 1
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-devil.jpeg'), filename: 'tarot-devil.jpeg')

# Card.create({
#     name: 'The Tower', 
#     full_meaning: 'The Tower card depicts a high spire nestled on top of the mountain. A lightning bolt strikes the tower which sets it ablaze. Flames are bursting in the windows and people are jumping out of the windows as an act of desperation. They perhaps signal the same figures we see chained in the Devil card earlier. They want to escape the turmoil and destruction within. The Tower is a symbol for the ambition that is constructed on faulty premises. The destruction of the tower must happen in order to clear out the old ways and welcome something new. Its revelations can come in a flash of truth or inspiration.', 
#     upright_meaning: 'The Tower represents change in the most radical and momentous sense. It is for this reason that the card itself visually looks so unnerving. But it doesnt necessarily have to be truly frightening or ominous. Because at the heart of this card, its message is foundational, groundbreaking change.
#      The kind of event that the Tower card marks does not have to be something terrible, like a disaster or a great loss.  Change itself is a normal part of life that one has to embrace. But it can sometimes strike fear, for it means that we must abandon the truths that we have known prior to this event. The old ways are no longer useful, and you must find another set of beliefs, values and processes to take their place. 
#      Be positive, it is time for you to replace the old foundations of the past with something that is more genuine and will serve you better in what is to come.
#      In terms of work, there is an inevitable argument bound to happen. You need to be in control and keep your temper in check. Avoid saying something that may hurt other people. When it comes to your love life, your romantic relationship may be nearing its end. Take this as a warning - if you really value your relationship, then it is time for you to take damage control or open a communication to clear misunderstandings. In your finances, the tower meaning refers to the need to be assured on your transactions.', 
#     reversed_meaning: 'When you get the Tower card reversed, you can feel some crisis looming along the horizon, and you are struggling as much as you can to try and avoid its manifestation. What you have not realized is that these breakdowns can be beneficial in breaking down your reliance on something that is false. The tower is built on faulty foundations, and it must fall. Though the destruction will be painful, the humbleness resulting from it can bring us peace.
#      What you relied on will no longer be there for you. Do not take this as a drastic and depressing change, it is time for you to become more self-reliant. ', 
#     arcana_id: 1, 
#     suit_id: 1
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-tower.jpeg'), filename: 'tarot-tower.jpeg')

# Card.create({
#     name: 'The Star', 
#     full_meaning: 'The Star card shows a woman kneeling at the edge of a small pond. She is holding two containers of water. One container pours the water out to the dry land, as if to to nourish it and ensure its fertility. The lush green land around her seems to say that it is working. One foot is inside the water which shows the spiritual abilities and inner strength of the woman. The other foot on the ground shows her practical abilities and strengths. Behind her, there is a large central star surrounded by seven small stars which represent the chakras. There is bird standing at a tree branch which represents the holy ibis of thought. The Stars astrological correspondent is Aquarius.', 
#     upright_meaning: 'The Star brings hope, renewed power, and strength to carry on with life. It shows how abundantly blessed you are by the universe as evidenced by the various things around you. It may not be directly evident at the moment, for this card follows the trauma of the Tower card. Remember that you hold within you all that you need for your fulfillment - the only thing that you need is courage. For this, you have all reasons to rejoice. To see this card is a message to have faith, for the universe will bless you and bring forth all that you need.
#      To receive the Star in your reading means that you have gone and passed through a terrible life challenge. You have managed to go through this without losing your hope. While you suffered, you perhaps were not aware of your own strength, but you are now perhaps recognizing that the loss helped you discover your own resilience and inner power. It is only now that you can really appreciate all that you have.', 
#     reversed_meaning: 'When the Star card is reversed, it means that you are feeling as though everything has turned against you. The challenges that you would normally see as exciting seem instead to make you feel as though you cannot overcome them. You have lost faith in something, whether inside yourself or with something you normally find dear. 
#      Without hope, without faith, we cannot find the motivation to progress forward in the challenges that we face. Where in your life are you feeling hopeless? In what ways do you already feel defeated? And how does that affect your actions? The star reversed asks us to nurture our sense of hope and positive energy to help propel our actions with joy instead of fear.', 
#     arcana_id: 1, 
#     suit_id: 1
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-star.jpeg'), filename: 'tarot-star.jpeg')

# Card.create({
#     name: 'The Moon', 
#     full_meaning: 'When we encounter the Moon, we see a path that leads off into the distance. On either side of the path stand a wolf and a dog, representing our animalistic nature - one is civilized, and the other wild and feral. There is a crawfish that is crawling out of the pond from which the path stems from. In the distance, we can see two towers flanking the central path, once again alluding to the doubles visible in this card. Everything in this card seems to echo the other, as if to allude to two possibilities. When we walk down the path, we walk the fine line between conscious and unconscious, between the tamed side of civilization of the dog, and the forces of nature represented by the wolf. 
#      The towers on the opposing ends represent the forces of good and evil, and their similarity in appearance can allude to the difficulties that we face in distinguishing between them.', 
#     upright_meaning: 'On one hand, the Moon card can symbolize your imagination is taking the best of you. In the dark of the night, you are taking a path that you are unsure of, for there could be danger lurking in its depths. You are the crawfish embarking on the path in the card. The moons light can bring you clarity and understanding and you should allow your intuition to guide you through this darkness. 
#      You need to be aware of the situations that are causing fear and anxiety in your mind, whether it is now or in the future. It alerts you not to allow inner disturbances and self-deception to take the best of you. These deep memories and fears must be let go, and the negative energies must be released and turned into something constructive.
#      Another reading of the Moon card is the existence of illusion. Some hidden truth must be discovered, for what you are seeing now may just be a trick of the light. You must search for the hidden forces that must be unraveled.', 
#     reversed_meaning: 'A Moon reversal in a reading can sometimes indicate that the darker and more negative aspects of the moon are present in your life. It could represent confusion and unhappiness - you want to make progress, but you are not sure what is the right thing to do. You must deal with your anxiety and fears by overcoming them, for they are like shadows in the dark. It is time to believe in yourself and move forward. 
#      The moon reversal meaning indicates that you are in an intuitive period or you have recently battled confusion, anxiety, and self-deception. It could be that you are misinterpreting how you have been feeling however you are starting to improve on this.
#      Another reversed moon meaning is that the forces of the night that are bringing you confusion are starting to dissipate. You have started managing your fears and anxiety. Whatever negative energies you have been facing are slowly fading away. It presents a liberating experience as you discover the positive side of things.', 
#     arcana_id: 1, 
#     suit_id: 1
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-moon.jpeg'), filename: 'tarot-moon.jpeg')

# Card.create({
#     name: 'The Sun', 
#     full_meaning: 'The Sun card presents an feeling of optimism and fulfillment. This card represents the dawn which follows the darkest of nights. The Sun is the source of all the life on our planet, and it represents life energy itself. There is a child depicted in the card, playing joyfully in the foreground. A symbol of our innocence, it represents the happiness that occurs when you are in alignment with your true self. The child is naked, meaning that he has absolutely nothing to hide. The card also depicts the childhood innocence and absolute purity. This is particularly emphasized through the white horse upon which the child is riding. The horse here is also a symbol of strength and nobility.', 
#     upright_meaning: 'The Sun card represents success, abundance, and radiance. Like the sun itself, it gives strength and vitality to all those that are lucky enough to feel its rays. There is much joy and happiness that is coming to you.
#      Because of your own personal fulfillment, you provide others with inspiration and joy as well. People are drawn to you because they are capable of seeing the warm and beautiful energy which you bring into their lives. You are also in a position in which you are capable of sharing your qualities as well as achievements with other people. You radiate love and affection towards those you care about the most. 
#      The card shows that you have a significant sense of deserved confidence right now. Life is currently particularly good, and the sun is shining your way as you reach the goals that you set. The Sun is one of the cards in the tarot which provide nothing but good feelings and fulfillment.', 
#     reversed_meaning: 'In the reversed position, the Sun indicates that you might have significant difficulties finding positive aspects to certain situations. The clouds might be blocking out the warmth and light that you need to progress. This might be preventing you from feeling confident and powerful. You may experience certain setbacks which are damaging your optimism and enthusiasm.
#      On the other hand, the Sun reversed might be indicative that you are being unrealistic. It might be a sign that you have an overly optimistic perception of certain situations. These are things that you need to take into account in order to ensure that you are on the right track and your successes continue as they do.', 
#     arcana_id: 1, 
#     suit_id: 1
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-sun.jpeg'), filename: 'tarot-sun.jpeg')

# Card.create({
#     name: 'Judgement', 
#     full_meaning: 'This card depicts what one would imagine the last judgment would be, in the various forms that takes in many mythologies. The image in the Judgement card shows women, men, and children who are rising from the grave to respond to Gabriel’s trumpet call. Their outstretched arms symbolize that they are ready to be judged by the universe. They are about to meet their creator, their actions weighed, and find out where they will spend the remainder of eternity: in heaven or in hell. The massive tidal wave in the background signify that judgement is unavoidable, and that this judgement will be final.
#      Judgement is ruled by Pluto, who is the underworld’s ruler. There are echoes of this card in Death, for they both remind us that everything comes to an end and that a new beginning is coming.', 
#     upright_meaning: 'The traditional Judgement meaning focuses on the moment when we reflect and evaluate ourselves and our actions. It is through self-reflection that we can have a clearer and objective understanding about where we are now, and what we need to do in order to grow as humans. The Judgement card appearing in a reading signifies that you are coming close to this significant point in your life where you must start to evaluate yourself. 
#      To see this card can also indicate that you are in a period of awakening, brought on by the act of self-reflection. You now have a clearer idea of what you need to change and how you need to be true yourself and your needs. This can mean making small changes to your daily life or making huge changes that not only affect you but the people close to you.', 
#     reversed_meaning: 'The reversed Judgement card can mean that you doubt and judge yourself too harshly. This could be causing you to miss opportunities that were awaiting you. The lost momentum causes you to fall behind in your plans, which can make it difficult to move forward. This means that you should not be cautious, but you should be moving forward with pride and confidence.
#      Another reading of the Judgement reversal card can be a push to take time out of your busy routine to reflect upon your life to this point, and what you have learned so far. You are most likely not giving yourself the time or space to fully think about the matter and learn the lessons you need to to be able to progress with awareness. You could also be too critical of your past actions, so you are not giving yourself the forgiveness to move forward. The mistakes that we have made in the past are learning tools, so they help us move though life. Focusing too hard on these mistakes can cause us to trip and fall.', 
#     arcana_id: 1, 
#     suit_id: 1
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-judgement.jpeg'), filename: 'tarot-judgement.jpeg')

# Card.create({
#     name: 'The World', 
#     full_meaning: 'The World card in the tarot deck has a dancing figure at the center. The dancing figure on the card has one leg crossed over the other and holds a wand in either hand. She symbolizes balance and evolution in movement. The fulfillment and unity that she represents is not one that is static, but ever-changing, dynamic and eternal.
#      The green wreath of flowers that surrounds the central figure is a symbol of success, while the red ribbons that wrap around it are reminiscent of infinity. There are four figures on each corner of the card - and they are the same ones that are in the Wheel of Fortune. The four figures represent Scorpio, Leo, Aquarius and Taurus - representative of the four corners of the universe, the four elements, and the four evangelicals. Together, they symbolize the harmony between all of their energies.', 
#     upright_meaning: 'To encounter the World in your cards is to encounter a great unity and wholeness. It symbolizes the moment when the inner and the outer worlds - self and other - become a single entity. In some traditions, this state is described as enlightenment, or nirvana. There is a recognition that the individual self is profoundly linked with all other things, and that we all dance and sway along the flow of life to one rhythm. Not only do you hear this rhythm, but you participate in it - following the dips and the rises, the joys and the sorrows. 
#      The meaning of the World card is fulfillment, achievement, and completion. This shows that all the efforts that you have been putting in place are starting to pay off. It reflects that you have completed a major milestone in your life and you have built the resilience to withstand challenges. The World may indicate completion of a long-term project, study or any other major event in your life. It may also mean the birth of a child, marriage, graduation or any other thing that you have accomplished.
#      The World card shows that you have a desire to give back to the community in various ways. You have a commitment to make the world a better place because you understand that everything is connected. ', 
#     reversed_meaning: 'You are drawing near to something that marks the end of a journey or an era. You may have many accomplishments that have lined your path, but there is a strange emptiness that fills you when you look backwards upon it, as if you have all the pieces but they are not coming together. What is missing? Do you feel connected to what you are doing? Do you feel connected to others? What alienates you from feeling complete? From feeling whole?', 
#     arcana_id: 1, 
#     suit_id: 1
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-world.jpeg'), filename: 'tarot-world.jpeg')

# # Card.create({
# #     name: '', 
# #     full_meaning: '', 
# #     upright_meaning: '', 
# #     reversed_meaning: '', 
# #     arcana_id: , 
# #     suit_id: 
# # })

# # Wands
# Card.create({
#     name: 'Ace of Wands', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 2
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-wands-01.jpeg'), filename: 'tarot-wands-01.jpeg')

# Card.create({
#     name: 'Two of Wands', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 2
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-wands-02.jpeg'), filename: 'tarot-wands-02.jpeg')

# Card.create({
#     name: 'Three of Wands', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 2
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-wands-03.jpeg'), filename: 'tarot-wands-03.jpeg')

# Card.create({
#     name: 'Four of Wands', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 2
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-wands-04.jpeg'), filename: 'tarot-wands-04.jpeg')

# Card.create({
#     name: 'Five of Wands', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 2
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-wands-05.jpeg'), filename: 'tarot-wands-05.jpeg')

# Card.create({
#     name: 'Six of Wands', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 2
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-wands-06.jpeg'), filename: 'tarot-wands-06.jpeg')

# Card.create({
#     name: 'Seven of Wands', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 2
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-wands-07.jpeg'), filename: 'tarot-wands-07.jpeg')

# Card.create({
#     name: 'Eigth of Wands', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 2
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-wands-08.jpeg'), filename: 'tarot-wands-08.jpeg')

# Card.create({
#     name: 'Nine of Wands', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 2
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-wands-09.jpeg'), filename: 'tarot-wands-09.jpeg')

# Card.create({
#     name: 'Ten of Wands', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 2
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-wands-10.jpeg'), filename: 'tarot-wands-10.jpeg')

# Card.create({
#     name: 'Page of Wands', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 2
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-wands-11.jpeg'), filename: 'tarot-wands-11.jpeg')

# Card.create({
#     name: 'Knight of Wands', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 2
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-wands-12.jpeg'), filename: 'tarot-wands-12.jpeg')

# Card.create({
#     name: 'Queen of Wands', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 2
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-wands-13.jpeg'), filename: 'tarot-wands-13.jpeg')

# Card.create({
#     name: 'King of Wands', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 2
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-wands-14.jpeg'), filename: 'tarot-wands-14.jpeg')

# # Pentacles
# Card.create({
#     name: 'Ace of Pentacles', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 3
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-pentacles-01.jpeg'), filename: 'tarot-pentacles-01.jpeg')

# Card.create({
#     name: 'Two of Pentacles', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 3
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-pentacles-02.jpeg'), filename: 'tarot-pentacles-02.jpeg')

# Card.create({
#     name: 'Three of Pentacles', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 3
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-pentacles-03.jpeg'), filename: 'tarot-pentacles-03.jpeg')

# Card.create({
#     name: 'Four of Pentacles', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 3
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-pentacles-04.jpeg'), filename: 'tarot-pentacles-04.jpeg')

# Card.create({
#     name: 'Five of Pentacles', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 3
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-pentacles-05.jpeg'), filename: 'tarot-pentacles-05.jpeg')

# Card.create({
#     name: 'Six of Pentacles', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 3
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-pentacles-06.jpeg'), filename: 'tarot-pentacles-06.jpeg')

# Card.create({
#     name: 'Seven of Pentacles', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 3
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-pentacles-07.jpeg'), filename: 'tarot-pentacles-07.jpeg')

# Card.create({
#     name: 'Eigth of Pentacles', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 3
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-pentacles-08.jpeg'), filename: 'tarot-pentacles-08.jpeg')

# Card.create({
#     name: 'Nine of Pentacles', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 3
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-pentacles-09.jpeg'), filename: 'tarot-pentacles-09.jpeg')

# Card.create({
#     name: 'Ten of Pentacles', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 3
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-pentacles-10.jpeg'), filename: 'tarot-pentacles-10.jpeg')

# Card.create({
#     name: 'Page of Pentacles', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 3
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-pentacles-11.jpeg'), filename: 'tarot-pentacles-11.jpeg')

# Card.create({
#     name: 'Knight of Pentacles', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 3
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-pentacles-12.jpeg'), filename: 'tarot-pentacles-12.jpeg')

# Card.create({
#     name: 'Queen of Pentacles', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 3
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-pentacles-13.jpeg'), filename: 'tarot-pentacles-13.jpeg')

# Card.create({
#     name: 'King of Pentacles', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 3
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-pentacles-14.jpeg'), filename: 'tarot-pentacles-14.jpeg')

# # Cups
# Card.create({
#     name: 'Ace of Cups', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 4
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-cups-01.jpeg'), filename: 'tarot-cups-01.jpeg')

# Card.create({
#     name: 'Two of Cups', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 4
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-cups-02.jpeg'), filename: 'tarot-cups-02.jpeg')

# Card.create({
#     name: 'Three of Cups', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 4
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-cups-03.jpeg'), filename: 'tarot-cups-03.jpeg')

# Card.create({
#     name: 'Four of Cups', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 4
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-cups-04.jpeg'), filename: 'tarot-cups-04.jpeg')

# Card.create({
#     name: 'Five of Cups', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 4
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-cups-05.jpeg'), filename: 'tarot-cups-05.jpeg')

# Card.create({
#     name: 'Six of Cups', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 4
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-cups-06.jpeg'), filename: 'tarot-cups-06.jpeg')

# Card.create({
#     name: 'Seven of Cups', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 4
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-cups-07.jpeg'), filename: 'tarot-cups-07.jpeg')

# Card.create({
#     name: 'Eigth of Cups', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 4
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-cups-08.jpeg'), filename: 'tarot-cups-08.jpeg')

# Card.create({
#     name: 'Nine of Cups', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 4
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-cups-09.jpeg'), filename: 'tarot-cups-09.jpeg')

# Card.create({
#     name: 'Ten of Cups', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 4
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-cups-10.jpeg'), filename: 'tarot-cups-10.jpeg')

# Card.create({
#     name: 'Page of Cups', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 4
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-cups-11.jpeg'), filename: 'tarot-cups-11.jpeg')

# Card.create({
#     name: 'Knight of Cups', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 4
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-cups-12.jpeg'), filename: 'tarot-cups-12.jpeg')

# Card.create({
#     name: 'Queen of Cups', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 4
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-cups-13.jpeg'), filename: 'tarot-cups-13.jpeg')

# Card.create({
#     name: 'King of Cups', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 4
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-cups-14.jpeg'), filename: 'tarot-cups-14.jpeg')


# # Swords
# Card.create({
#     name: 'Ace of Swords', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 5
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-swords-01.jpeg'), filename: 'tarot-swords-01.jpeg')

# Card.create({
#     name: 'Two of Swords', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 5
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-swords-02.jpeg'), filename: 'tarot-swords-02.jpeg')

# Card.create({
#     name: 'Three of Swords', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 5
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-swords-03.jpeg'), filename: 'tarot-swords-03.jpeg')

# Card.create({
#     name: 'Four of Swords', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 5
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-swords-04.jpeg'), filename: 'tarot-swords-04.jpeg')

# Card.create({
#     name: 'Five of Swords', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 5
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-swords-05.jpeg'), filename: 'tarot-swords-05.jpeg')

# Card.create({
#     name: 'Six of Swords', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 5
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-swords-06.jpeg'), filename: 'tarot-swords-06.jpeg')

# Card.create({
#     name: 'Seven of Swords', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 5
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-swords-07.jpeg'), filename: 'tarot-swords-07.jpeg')

# Card.create({
#     name: 'Eigth of Swords', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 5
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-swords-08.jpeg'), filename: 'tarot-swords-08.jpeg')

# Card.create({
#     name: 'Nine of Swords', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 5
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-swords-09.jpeg'), filename: 'tarot-swords-09.jpeg')

# Card.create({
#     name: 'Ten of Swords', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 5
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-swords-10.jpeg'), filename: 'tarot-swords-10.jpeg')

# Card.create({
#     name: 'Page of Swords', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 5
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-swords-11.jpeg'), filename: 'tarot-swords-11.jpeg')

# Card.create({
#     name: 'Knight of Swords', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 5
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-swords-12.jpeg'), filename: 'tarot-swords-12.jpeg')

# Card.create({
#     name: 'Queen of Swords', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 5
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-swords-13.jpeg'), filename: 'tarot-swords-13.jpeg')

# Card.create({
#     name: 'King of Swords', 
#     full_meaning: '', 
#     upright_meaning: '', 
#     reversed_meaning: '', 
#     arcana_id: 2, 
#     suit_id: 5
# }).image_file.attach(io: File.open('app/assets/images/seed_images/tarot-swords-14.jpeg'), filename: 'tarot-swords-14.jpeg')

admin = User.create(name: 'Megan', username: 'megan', password_digest: BCrypt::Password.create('password'), is_admin: true)
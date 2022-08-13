puts "🌱 Seeding spices..."

user1 = User.create(first_name: "Youba", last_name: "Idjis", email: "youba@gmail.com")
user2 = User.create(first_name: "Fouzia", last_name: "Hamouchet", email: "fouzia@gmail.com")

categorie1 = Categorie.create(name: "animal charity", website: "https://www.americanhumane.org", bio: "You can save animals’ lives every day.")
categorie2 = Categorie.create(name: "cancer charity", website: "https://www.cancerresearch.org", bio: "Monthly donations help us plan and allocate resources effectively to advance research and save more lives.")
categorie3 = Categorie.create(name: "COVID-19 charity", website: "https://www.directrelief.org/emergency/coronavirus-outbreak", bio: "Direct Relief is providing emergency medical resources—vaccines, antibody therapies, PPE, medical-grade oxygen, and other critical items—to medical facilities across the U.S. and world.")
categorie4 = Categorie.create(name: "education charity", website: "https://scholarshipamerica.org", bio: "Let’s Keep More Dreams Alive.")

donation1 = Donation.create(amount: 20, comment: "Hope the Best", categorie_id: categorie1.id, user_id: user1.id)
donation2 = Donation.create(amount: 25, comment: "Hope the Best", categorie_id: categorie2.id, user_id: user1.id)
donation3 = Donation.create(amount: 2, comment: "Hope the Best", categorie_id: categorie1.id, user_id: user2.id)
donation4 = Donation.create(amount: 10, comment: "Hope the Best", categorie_id: categorie4.id, user_id: user1.id)
donation5 = Donation.create(amount: 30, comment: "Hope the Best", categorie_id: categorie3.id, user_id: user1.id)
donation6 = Donation.create(amount: 76, comment: "Hope the Best", categorie_id: categorie2.id, user_id: user2.id)
donation7 = Donation.create(amount: 12, comment: "Hope the Best", categorie_id: categorie4.id, user_id: user2.id)
donation8 = Donation.create(amount: 9, comment: "Hope the Best", categorie_id: categorie1.id, user_id: user1.id)


puts "✅ Done seeding!"

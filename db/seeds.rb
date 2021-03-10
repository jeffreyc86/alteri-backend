puts "Seeding Start"


#Pandemic Items

Item.create(
    name: "Face Masks",
    category: "Pandemic Necessities",
    image_url: "/images/item-icons/facemask.jpg",
    multiple: false
)

Item.create(
    name: "Hand Sanitizer",
    category: "Pandemic Necessities",
    image_url: "/images/item-icons/sanitizer.jpg",
    multiple: false
)

#Food Items

Item.create(
    name: "Candy / Gum",
    category: "Food",
    image_url: "/images/item-icons/candy.jpg",
    multiple: true
)

Item.create(
    name: "Packaged Snacks - Sweet",
    category: "Food",
    image_url: "/images/item-icons/sweets.jpg",
    multiple: true
)

Item.create(
    name: "Packaged Snacks - Savory",
    category: "Food",
    image_url: "/images/item-icons/chips.jpg",
    multiple: true
)

Item.create(
    name: "Non-Perishable Foods",
    category: "Food",
    image_url: "/images/item-icons/canned.jpg",
    multiple: true
)

Item.create(
    name: "Bottled Water",
    category: "Food",
    image_url: "/images/item-icons/waterbottle.jpg",
    multiple: true
)

Item.create(
    name: "Hot Meal",
    category: "Food",
    image_url: "/images/item-icons/hotmeal.jpg",
    multiple: false
)

Item.create(
    name: "Coffee",
    category: "Food",
    image_url: "/images/item-icons/coffee.jpg",
    multiple: false
)

Item.create(
    name: "Juice",
    category: "Food",
    image_url: "/images/item-icons/juice.jpg",
    multiple: false
)

#Hygiene Items 

Item.create(
    name: "Toothbrush",
    category: "Hygiene",
    image_url: "/images/item-icons/toothbrush.jpg",
    multiple: false
)

Item.create(
    name: "Toothpaste",
    category: "Hygiene",
    image_url: "/images/item-icons/toothpaste.jpg",
    multiple: false
)

Item.create(
    name: "Dental Floss",
    category: "Hygiene",
    image_url: "/images/item-icons/floss.jpg",
    multiple: false
)
Item.create(
    name: "Mouthwash",
    category: "Hygiene",
    image_url: "/images/item-icons/mouthwash.jpg",
    multiple: false
)

Item.create(
    name: "Brush / Comb",
    category: "Hygiene",
    image_url: "/images/item-icons/brush.jpg",
    multiple: false
)

Item.create(
    name: "Shaving Razor",
    category: "Hygiene",
    image_url: "/images/item-icons/razor.jpg",
    multiple: false
)

Item.create(
    name: "Shaving Cream",
    category: "Hygiene",
    image_url: "/images/item-icons/shavingcream.jpg",
    multiple: false
)

Item.create(
    name: "Wet Wipes",
    category: "Hygiene",
    image_url: "/images/item-icons/wetwipes.jpg",
    multiple: false
)

Item.create(
    name: "Dry Shampoo",
    category: "Hygiene",
    image_url: "/images/item-icons/dryshampoo.jpg",
    multiple: false
)

Item.create(
    name: "Liquid Shampoo / Conditioner",
    category: "Hygiene",
    image_url: "/images/item-icons/shampoo.jpg",
    multiple: false
)

Item.create(
    name: "Soap",
    category: "Hygiene",
    image_url: "/images/item-icons/soap.jpg",
    multiple: false
)

Item.create(
    name: "Towel",
    category: "Hygiene",
    image_url: "/images/item-icons/towel.jpg",
    multiple: false
)
Item.create(
    name: "Deodorant",
    category: "Hygiene",
    image_url: "/images/item-icons/deodorant.jpg",
    multiple: false
)

Item.create(
    name: "Lotion",
    category: "Hygiene",
    image_url: "/images/item-icons/lotion.jpg",
    multiple: false
)

Item.create(
    name: "Lip Balm",
    category: "Hygiene",
    image_url: "/images/item-icons/lipbalm.jpg",
    multiple: false
)

#Clothing Items
Item.create(
    name: "Underwear",
    category: "Clothing",
    image_url: "/images/item-icons/underwear.jpg",
    multiple: true
)

Item.create(
    name: "Socks",
    category: "Clothing",
    image_url: "/images/item-icons/socks.jpg",
    multiple: true
)

Item.create(
    name: "T-Shirt",
    category: "Clothing",
    image_url: "/images/item-icons/tshirt.jpg",
    multiple: true
)

Item.create(
    name: "Sweater / Hoodie",
    category: "Clothing",
    image_url: "/images/item-icons/sweater.jpg",
    multiple: true
)

Item.create(
    name: "Long Pants",
    category: "Clothing",
    image_url: "/images/item-icons/pants.jpg",
    multiple: true
)

Item.create(
    name: "Short Pants",
    category: "Clothing",
    image_url: "/images/item-icons/shorts.jpg",
    multiple: true
)

Item.create(
    name: "Shoes / Boots",
    category: "Clothing",
    image_url: "/images/item-icons/shoes.jpg",
    multiple: true
)

Item.create(
    name: "Lightweight Jacket",
    category: "Clothing",
    image_url: "/images/item-icons/lightjacket.jpg",
    multiple: false
)

Item.create(
    name: "Gloves",
    category: "Clothing",
    image_url: "/images/item-icons/gloves.jpg",
    multiple: false
)

Item.create(
    name: "Scarf",
    category: "Clothing",
    image_url: "/images/item-icons/scarf.jpg",
    multiple: false
)

Item.create(
    name: "Winter Hat",
    category: "Clothing",
    image_url: "/images/item-icons/beanie.jpg",
    multiple: false
)

Item.create(
    name: "Winter Jacket",
    category: "Clothing",
    image_url: "/images/item-icons/winterjacket.jpg",
    multiple: false
)

#Miscellaneous Items

Item.create(
    name: "First Aid Kit",
    category: "Miscellaneous",
    image_url: "/images/item-icons/firstaid.jpg",
    multiple: false
)

Item.create(
    name: "Chewable Multivitamins",
    category: "Miscellaneous",
    image_url: "/images/item-icons/vitamins.jpg",
    multiple: false
)

Item.create(
    name: "Sewing Kit",
    category: "Miscellaneous",
    image_url: "/images/item-icons/sewingkit.jpg",
    multiple: false
)

Item.create(
    name: "Re-Sealable Storage Bags",
    category: "Miscellaneous",
    image_url: "/images/item-icons/ziploc.jpg",
    multiple: false
)

Item.create(
    name: "Small Flashlight",
    category: "Miscellaneous",
    image_url: "/images/item-icons/flashlight.jpg",
    multiple: false
)

Item.create(
    name: "Sunscreen",
    category: "Miscellaneous",
    image_url: "/images/item-icons/sunscreen.jpg",
    multiple: false
)

Item.create(
    name: "Heat Packs / Hand Warmers",
    category: "Miscellaneous",
    image_url: "/images/item-icons/heatpack.jpg",
    multiple: false
)

Item.create(
    name: "Blanket",
    category: "Miscellaneous",
    image_url: "/images/item-icons/blanket.jpg",
    multiple: false
)

Item.create(
    name: "Sleeping Bag",
    category: "Miscellaneous",
    image_url: "/images/item-icons/sleepingbag.jpg",
    multiple: false
)

Item.create(
    name: "Pillow",
    category: "Miscellaneous",
    image_url: "/images/item-icons/pillow.jpg",
    multiple: false
)

Item.create(
    name: "Playing Cards",
    category: "Miscellaneous",
    image_url: "/images/item-icons/cards.jpg",
    multiple: false
)

Item.create(
    name: "Book - Donor's Choice",
    category: "Miscellaneous",
    image_url: "/images/item-icons/book.jpg",
    multiple: false
)

Item.create(
    name: "Pens / Pencils",
    category: "Miscellaneous",
    image_url: "/images/item-icons/penpencil.jpg",
    multiple: false
)

Item.create(
    name: "Notebook",
    category: "Miscellaneous",
    image_url: "/images/item-icons/notebook.jpg",
    multiple: false
)

puts "Items Seeded 🍲👕📚"

puts "Seeding Users 🧟‍♀️🧟🧟‍♂️"
User.create(
    email: "mortysadweeb@email.com",
    password: "test1234",
    first_name: "Rick",
    last_name: "Sanchez",
    photo_url: "https://res.cloudinary.com/dq7q4e3tx/image/upload/v1615335063/erxyzfioy2st0yltcogm.png",
    lat: 40.7178,
    lng: -74.0431
)

User.create(
    email: "cowardlytinman@email.com",
    password: "test1234",
    first_name: "Dorothy",
    last_name: "Oz",
    photo_url: "https://res.cloudinary.com/dq7q4e3tx/image/upload/v1615336719/Screen_Shot_2021-03-09_at_7.38.09_PM_lv70nh.png",
    lat: 40.7870,
    lng: -73.9754
)
User.create(
    email: "homelessguy@email.com",
    password: "test1234",
    first_name: "Harrison",
    last_name: "Smith",
    photo_url: "https://res.cloudinary.com/dq7q4e3tx/image/upload/v1615336720/Screen_Shot_2021-03-09_at_7.33.20_PM_twkieh.png",
    lat: 40.8094,
    lng: -73.8803
)

User.create(
    email: "homelessguy2@email.com",
    password: "test1234",
    first_name: "Nicholas",
    last_name: "Clause",
    photo_url: "https://res.cloudinary.com/dq7q4e3tx/image/upload/v1615336720/Screen_Shot_2021-03-09_at_7.35.48_PM_fxesa0.png",
    lat: 40.7178,
    lng: -74.0431
)

User.create(
    email: "selflessdonor@email.com",
    password: "test1234",
    first_name: "Antoinette",
    last_name: "Garcia",
    photo_url: "https://res.cloudinary.com/dq7q4e3tx/image/upload/v1615336720/Screen_Shot_2021-03-09_at_7.37.19_PM_tu3ch4.png",
    lat: 40.7081,
    lng: -73.9571
)



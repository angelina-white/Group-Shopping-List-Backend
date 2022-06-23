puts "Removing prior data..."
Name.delete_all
Sku.delete_all
Order.delete_all


puts "Seeding sku data..."

spring_mix = Sku.create(
    sku_number: 48757,
    label: "Spring Mix Salad",
    description: "A flavorful blend of organic baby lettuces, baby greens, and radicchio.",
    unit_count: 1_000_000,
    price: 4.49
)

organic_milk = Sku.create(
    sku_number: 218073,
    label: "Organic Milk, 1%",
    description: "",
    unit_count: 3,
    price: 10.89
)

spin_parm_dp = Sku.create(
    sku_number: 407600,
    label: "Spinach Parm Dip",
    description: "",
    unit_count: 1_000_000,
    price: 8.99
)

pasta = Sku.create(
    sku_number: 00771,
    label: "Bowties Pasta",
    description: "",
    unit_count: 8,
    price: 2.00
)

oatmeal = Sku.create(
    sku_number: 28855,
    label: "Brown Sugar Oatmeal",
    description: "",
    unit_count: 6,
    price: 5.00
)

popcorn = Sku.create(
    sku_number: 00020,
    label: "Newman's Own Popcorn",
    description: "",
    unit_count: 6,
    price: 3.49
)

cereal  = Sku.create(
    sku_number: 00010,
    label: "Great Grains Pecan Cereal",
    description: "",
    unit_count: 8,
    price: 4.49
)

flour = Sku.create(
    sku_number: 10610,
    label: "Gold Medal Flour",
    description: "",
    unit_count: 1000000,
    price: 4.99
)

beans = Sku.create(
    sku_number: 252582,
    label: "Red Kidney Beans",
    description: "",
    unit_count: 1000000,
    price: 1.99
)

tuna = Sku.create(
    sku_number: 806730,
    label: "Starkist Tuna in Water",
    description: "",
    unit_count: 12,
    price: 7.99
)

breadCrumbs = Sku.create(
    sku_number: 89108,
    label: "Progresso",
    description: "",
    unit_count: 1000000,
    price: 2.25
)



puts "Seeding names data..."

billy = Name.create(
    name: "Billy"
)

tom = Name.create(
    name: "Tom"
)

sarah = Name.create(
    name: "Sarah"
)

sally = Name.create(
    name: "Sally"
)


puts "Seeding orders data..."
# #puts "shop_date: DateTime.parse('06/25/2022'),"
# # using Date.new per https://stackoverflow.com/a/32642800

Order.create(
    sku_id: spring_mix.id,
    quantity: 0.5,
    name_id: billy.id,
    year: 2022,
    month: 6,
    day: 25,
    order_price: 2.25
)

Order.create(
    sku_id: pasta.id,
    quantity: 3,
    name_id: sarah.id,
    year: 2022,
    month: 6,
    day: 25,
    order_price: 6.00
)

Order.create(
    sku_id: organic_milk.id,
    quantity: 0.75,
    name_id: tom.id,
    year: 2022,
    month: 6,
    day: 25,
    order_price: 8.17
)

Order.create(
    sku_id: tuna.id,
    quantity: 0.15,
    name_id: sarah.id,
    year: 2022,
    month: 6,
    day: 25,
    order_price: 1.20
)

Order.create(
    sku_id: spring_mix.id,
    quantity: 0.6,
    name_id: tom.id,
    year: 2022,
    month: 7,
    day: 25,
    order_price: 2.70
)

Order.create(
    sku_id: spring_mix.id,
    quantity: 0.25,
    name_id: sarah.id,
    year: 2022,
    month: 8,
    day: 25,
    order_price: 3.37
)


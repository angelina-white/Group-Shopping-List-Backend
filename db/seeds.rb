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

whole_milk = Sku.create(
    sku_number: 999,
    label: "Whole Milk, 1 Gal.",
    description: "",
    unit_count: 1_000_000,
    price: 3.89
)

spin_parm_dp = Sku.create(
    sku_number: 407600,
    label: "Spinach Parm Dip",
    description: "",
    unit_count: 1_000_000,
    price: 8.99
)

water_bottles = Sku.create(
    sku_number: 55555,
    label: "Purified Water, 40-pk",
    description: "",
    unit_count: 40,
    price: 3.99
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
#puts "shop_date: DateTime.parse('06/25/2022'),"
# using Date.new per https://stackoverflow.com/a/32642800

Order.create(
    sku_id: spring_mix.id,
    quantity: 0.5,
    name_id: billy.id,
    year: 2022,
    month: 6,
    day: 25,
    order_price: 9.99
)

Order.create(
    sku_id: spring_mix.id,
    quantity: 1.5,
    name_id: tom.id,
    year: 2022,
    month: 6,
    day: 25,
    order_price: 2.99
)

Order.create(
    sku_id: spring_mix.id,
    quantity: 0.75,
    name_id: sarah.id,
    year: 2022,
    month: 6,
    day: 25,
    order_price: 7.99
)


Order.create(
    sku_id: water_bottles.id,
    quantity: 0.5,
    name_id: billy.id,
    year: 2022,
    month: 6,
    day: 25,
    order_price: 2.00
)
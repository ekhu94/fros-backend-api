Inventory.destroy_all
require 'json'

def loadMens
    file = open('./db/db_mens.json')
    content = file.read
    json = JSON.parse(content)

    json.each{ |i|
        Inventory.create(
            name: i['name'],
            price: i['price']['value'],
            mens: true,
            front_URL: i['images'][0]['url'],
            back_URL: i['articles'][0]['logoPicture'][0]['url']
        )
    }
end

def loadWomens
    file = open('./db/db_womens.json')
    content = file.read
    json = JSON.parse(content)
    json.each{ |i|
    Inventory.create(
        name: i['name'],
        price: i['price']['value'],
        mens: false,
        front_URL: i['images'][0]['url'],
        back_URL: i['articles'][0]['logoPicture'][0]['url']
    )
}
end

loadMens
loadWomens

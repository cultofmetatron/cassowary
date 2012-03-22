# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(username:"cultofmetatron", email:'cultofmetatron@aumlogic.com', password:'oberon64', password_confirmation:'omnibus64')

blog = Blog.create(title:'main', description:'the main blog')

blog.posts.create(user_id:1, published:0, url_slug:"first", title:"First Post example", description:"description of said post", body:"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis ")
blog.posts.create(user_id:1, published:0, url_slug:"second", title:"Second Post example", description:"description of said post", body:"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis ")
blog.posts.create(user_id:1, published:0, url_slug:"third", title:"Third Post example", description:"description of said post", body:"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis ")
blog.posts.create(user_id:1, published:0, url_slug:"fourth", title:"Fourth Post example", description:"description of said post", body:"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis ")






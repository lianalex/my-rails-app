# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Page.create(
  title: "redStyle",
  bgColor: "#9e0000",
  fontColor: "#ffffff",
  fontStyle: "Courier New",
  borderStyle: "inset",
  borderWidth: 7,
  borderColor: "#df0707",
  aLink: "#e1ff00",
  aVisited: "#00ffee",
  aHover: "#ffd500",
  aActive: "#ff00f7",
  titleUnderline: false,
  titleItalicize: true,
  defaultLinks: false,
  titlePosition: "Center",
  bgImageBool: true,
  bgImage:
   "https://cdn.pixabay.com/photo/2016/10/20/18/35/earth-1756274__480.jpg",
  bgImageTile: false,
  borderRounded: 0,
  textStyle: nil,
  textShadow: 1,
  shadowBlur: 0,
  shadowColor: "#1d167e"
  )
Page.create(
  title: "blueStyle",
  bgColor: "#0075ff",
  fontColor: "#f3f7c0",
  fontStyle: "Serif",
  borderStyle: "dotted",
  borderWidth: 5,
  borderColor: "#000000",
  aLink: "#f7f7f7",
  aVisited: "#b39494",
  aHover: "#7e5858",
  aActive: "#3f2121",
  titleUnderline: false,
  titleItalicize: false,
  defaultLinks: false,
  titlePosition: nil,
  bgImageBool: true,
  bgImage:
   "https://cdn.pixabay.com/photo/2016/11/29/05/45/astronomy-1867616__480.jpg",
  bgImageTile: false,
  borderRounded: 13,
  textStyle: nil,
  textShadow: 3,
  shadowBlur: 3,
  shadowColor: "#000000"
  )
Page.create(
  title: "psychaStyle",
  bgColor: "#00eeff",
  fontColor: "#ffffff",
  fontStyle: "Fantasy",
  borderStyle: "inset",
  borderWidth: 10,
  borderColor: "#fe9090",
  aLink: "#9dace7",
  aVisited: "#f7caca",
  aHover: "#c1ecbb",
  aActive: "#dee1b7",
  titleUnderline: false,
  titleItalicize: true,
  defaultLinks: false,
  titlePosition: "Left",
  bgImageBool: true,
  bgImage:
   "https://cdn.pixabay.com/photo/2013/07/25/13/01/stones-167089__480.jpg",
  bgImageTile: false,
  borderRounded: 22,
  textStyle: "Capitalize",
  textShadow: 2,
  shadowBlur: 1,
  shadowColor: "#564d4d"
  )

Word.create(
  image: nil,
  title: "My First Doc"
  )
Word.create(
  image: nil,
  title: "TEST3"
  )
Section.create(
  tag: "h1",
  body: "This is the Title",
  isLink: nil,
  hyperlink: nil,  
  word_id: 1
  )
Section.create(
  tag: "h3",
  body: "The First Subtitle",
  isLink: nil,
  hyperlink: nil,  
  word_id: 1
  )
Section.create(
  tag: "p",
  body:
   "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lacus laoreet non curabitur gravida arcu ac. Id semper risus in hendrerit. Arcu bibendum at varius vel. Urna porttitor rhoncus dolor purus. Nisi lacus sed viverra tellus in. Nibh ipsum consequat nisl vel pretium lectus quam id. Lacus laoreet non curabitur gravida arcu ac tortor dignissim convallis. Diam donec adipiscing tristique risus nec. Velit scelerisque in dictum non consectetur a. Congue nisi vitae suscipit tellus mauris a diam maecenas. Eget mauris pharetra et ultrices neque ornare aenean euismod. Neque vitae tempus quam pellentesque nec nam. Ac placerat vestibulum lectus mauris ultrices eros in cursus. Nec feugiat nisl pretium fusce id velit ut tortor pretium. A lacus vestibulum sed arcu non. Commodo ullamcorper a lacus vestibulum. Suspendisse in est ante in nibh mauris. Duis ultricies lacus sed turpis tincidunt id aliquet.",
  isLink: nil,
  hyperlink: nil,  
  word_id: 1
  )
Section.create(
  tag: "p",
  body:
   "Bibendum est ultricies integer quis auctor elit sed vulputate. Commodo viverra maecenas accumsan lacus. Tellus in hac habitasse platea. Nisl pretium fusce id velit ut. Tincidunt vitae semper quis lectus nulla at volutpat diam. Ipsum faucibus vitae aliquet nec ullamcorper sit amet risus nullam. Vitae nunc sed velit dignissim sodales ut eu sem integer. Tincidunt ornare massa eget egestas purus viverra accumsan in nisl. Volutpat ac tincidunt vitae semper quis. In ante metus dictum at tempor.",
  isLink: nil,
  hyperlink: nil, 
  word_id: 1
  )
Section.create(
  tag: "h3",
  body:
   "At elementum eu facilisis sed odio morbi quis. In metus vulputate eu scelerisque. Vestibulum lectus mauris ultrices eros in. Aliquam faucibus purus in massa tempor nec feugiat nisl pretium. Lorem donec massa sapien faucibus et molestie ac feugiat. Praesent elementum facilisis leo vel fringilla. Sed odio morbi quis commodo odio. Ipsum nunc aliquet bibendum enim facilisis. Feugiat in fermentum posuere urna nec tincidunt. Velit laoreet id donec ultrices tincidunt arcu non sodales neque. Orci sagittis eu volutpat odio facilisis mauris sit amet massa.",
  isLink: nil,
  hyperlink: nil,  
  word_id: 1
  )
Section.create(
  tag: "h3",
  body: "This is the Finale",
  isLink: nil,
  hyperlink: nil,  
  word_id: 1
  )
Section.create(
  tag: "p",
  body:
   "Fusce ut placerat orci nulla pellentesque dignissim enim. Et netus et malesuada fames ac. Id faucibus nisl tincidunt eget. Diam ut venenatis tellus in. Velit laoreet id donec ultrices. Eget mi proin sed libero enim sed faucibus turpis in. Dictum varius duis at consectetur lorem donec massa sapien faucibus. Posuere lorem ipsum dolor sit amet consectetur. Tellus mauris a diam maecenas. Porta lorem mollis aliquam ut porttitor leo a diam. A diam maecenas sed enim. Nibh sed pulvinar proin gravida hendrerit. Elementum eu facilisis sed odio morbi quis commodo. Tempor id eu nisl nunc mi ipsum. Tristique senectus et netus et malesuada fames ac. Aenean vel elit scelerisque mauris pellentesque. Vestibulum rhoncus est pellentesque elit ullamcorper. Tincidunt dui ut ornare lectus sit.",
  isLink: nil,
  hyperlink: nil,  
  word_id: 1
  )
Section.create(
  tag: "h1",
  body: "Hello, World!",
  isLink: nil,
  hyperlink: nil,  
  word_id: 2
  )
Section.create(
  tag: "h3",
  body: "Welcome!",
  isLink: nil,
  hyperlink: nil,  
  word_id: 2
  )
Section.create(
  tag: "p",
  body:
   "Varius vel pharetra vel turpis nunc. Congue quisque egestas diam in arcu. Congue nisi vitae suscipit tellus mauris a. Cursus in hac habitasse platea dictumst quisque sagittis. Velit egestas dui id ornare arcu odio ut. Eget mauris pharetra et ultrices. Vitae proin sagittis nisl rhoncus mattis rhoncus urna neque. Aenean et tortor at risus viverra. Facilisis gravida neque convallis a. Sit amet consectetur adipiscing elit pellentesque habitant morbi. Pellentesque nec nam aliquam sem et tortor consequat id. Urna porttitor rhoncus dolor purus non enim praesent elementum facilisis. Duis tristique sollicitudin nibh sit amet commodo nulla facilisi. Facilisis sed odio morbi quis commodo. Odio tempor orci dapibus ultrices. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque.",
  isLink: nil,
  hyperlink: nil,  
  word_id: 2 
  )
Section.create(
  tag: "p",
  body:
   "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eu nisl nunc mi ipsum faucibus. Ultrices gravida dictum fusce ut placerat orci nulla. Ut porttitor leo a diam sollicitudin tempor id eu nisl. Ultrices tincidunt arcu non sodales neque sodales ut etiam. Tellus integer feugiat scelerisque varius morbi enim nunc faucibus a. Ultrices gravida dictum fusce ut placerat orci. In nulla posuere sollicitudin aliquam ultrices sagittis orci a. Diam in arcu cursus euismod quis viverra nibh. Mattis rhoncus urna neque viverra justo. Neque aliquam vestibulum morbi blandit cursus risus at ultrices mi. Eu tincidunt tortor aliquam nulla facilisi cras fermentum odio eu. Tellus at urna condimentum mattis pellentesque id nibh tortor id.",
  isLink: nil,
  hyperlink: nil,  
  word_id: 2
  )
Section.create(
  tag: "h3",
  body: "Hello Middle Section!",
  word_id: 2  
  )
Section.create(
  tag: "p",
  body:
   "Nisl purus in mollis nunc. Sapien pellentesque habitant morbi tristique senectus et. Suscipit adipiscing bibendum est ultricies integer quis auctor elit sed. Odio facilisis mauris sit amet massa vitae tortor condimentum lacinia. Viverra accumsan in nisl nisi scelerisque eu ultrices vitae. At consectetur lorem donec massa sapien faucibus. Senectus et netus et malesuada fames ac. Lorem sed risus ultricies tristique nulla. Porttitor eget dolor morbi non arcu risus quis. Ut venenatis tellus in metus vulputate eu scelerisque. Vel quam elementum pulvinar etiam non quam lacus suspendisse faucibus. Congue mauris rhoncus aenean vel. Cursus sit amet dictum sit amet justo donec. Vulputate dignissim suspendisse in est ante in nibh mauris. Interdum velit euismod in pellentesque massa placerat duis ultricies. Nunc non blandit massa enim nec dui nunc mattis enim. Integer malesuada nunc vel risus commodo viverra. Porta non pulvinar neque laoreet. Sed vulputate odio ut enim blandit.",
  isLink: nil,
  hyperlink: nil,  
  word_id: 2
  )
Section.create(
  tag: "h3",
  body: "This is the End!",
  isLink: nil,
  hyperlink: nil,  
  word_id: 2  
  )
Section.create(
  tag: "p",
  body:
   "Lacus vestibulum sed arcu non odio euismod. Nullam eget felis eget nunc lobortis mattis aliquam. Ut etiam sit amet nisl. Sed ullamcorper morbi tincidunt ornare massa. Nec ultrices dui sapien eget. Mattis molestie a iaculis at. Fusce id velit ut tortor pretium. Pellentesque eu tincidunt tortor aliquam nulla facilisi cras fermentum. Orci ac auctor augue mauris. Bibendum at varius vel pharetra vel turpis nunc eget lorem. Non enim praesent elementum facilisis leo. Ac turpis egestas maecenas pharetra convallis posuere.",
  isLink: nil,
  hyperlink: nil,
  word_id: 2  
  )
Section.create(
  tag: "a",
  body: "A link to a sweet html anchor guide",
  isLink: true,
  hyperlink: "https://www.w3schools.com/tags/att_a_href.asp",
  word_id: 1
  )
Product.create(
  title: "First + Red",
  htmlID: 1,
  cssID: 1  
  )
Product.create(
  title: "First + Blue",
  htmlID: 1,
  cssID: 2,  
  )
Product.create(
  title: "TEST + Red",
  htmlID: 2,
  cssID: 1  
  )
Product.create(
  title: "TEST + Blue",
  htmlID: 2,
  cssID: 2
  )
Product.create(
  title: "Hello World + Psych",
  htmlID: 2,
  cssID: 3
  )
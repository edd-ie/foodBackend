# [Food ChapChap(backend)](https://food-chapchap.vercel.app/)

The API to [Food ChapChap](https://food-chapchap.vercel.app/)

## Table of Contents

1. [Getting started](#Getting-started)
2. [Usage](#Usage)
3. [Relationships](#relations)
4. [Models](#Methods)
   - [Customers](#user)
   - [Restaurant](#card)
   - [Food](#sim)
   - [Orders](#saving)
   - [Order Tracking](#save_cards)
   - [Staff](#save_sims)
5. [Routes](#routes)
6. [Contributors](#contributors)
7. [Licenses](#license)
8. [Resources](#Sources)

## <a id="Getting-started">Getting started</a>

The project runs on rails and postgesql

### 1. Website

You can access the site on [pockets-backend](https://backendfood-co7z.onrender.com/)

### 2. Cloning

**Clone** the project files to your local repository:

- HTTPS => `https://github.com/edd-ie/foodBackend.git`
- SSH => `git@github.com:edd-ie/foodBackend.git`
- Git CLI => `gh repo clone edd-ie/foodBackend`

Open the terminal and install all dependencies using.

```
bundle install
```

After installation run this command to start the rails server

```
rails s
```

Your default browser will be launched and the homepage will be rendered

## <a id="relations">Relationships</a>

![Alt text](./public/FoodApp.drawio)

### One-to-Many

Customer has many:

- foods
- orders
- Reviews
- Favourites

Restaurant has many:

- foods
- order_tracking
- Reviews
- staffs
- inventories

Food has many:

- orders

Staff has many:

- order_tracking

### Many-to-Many

customer has many:

- order_trackings transactions through orders

Restaurant has many:

- orders through cards order_trackings

## <a id="Methods">Models</a>

This handles the logic for the data sourcing from the data

- Customer - Customer logic

- Restaurant - Restaurant Logic

- Food - Food Logic

- Inventory - Inventory logic

- Staff - Stafflogic

- order - orders logic

## <a id="routes">Routes</a>

The routes the have full http requests functionality(GET, POST, DELETE, PATCH, PUT)

```
resources :access_tokens
  resources :callback_urls
  resources :mpesas
  # root routes
  root "fallback#home"

  # main routes
  resources :restaurant_reviews
  resources :food_reviews
  resources :orders
  resources :foods
  resources :order_tracks
  resources :staffs
  resources :inventories
  resources :loyalties
  resources :restaurants
  resources :customers
  resources :fav_foods
  resources :fav_restaurants

```

### Custom routes

For added functionality some custom routes were created to help get specific data from database

```
  # Auxiliary routes

  #### Customer
  get "/customer/orders/:id", to: "customers#orders"
  get "/customer/activeOrders/:id", to: "customers#activeOrders"
  post "/customer/order", to: "orders#create"

  get "/customer/favRes/:id", to: "customers#favRes"
  post "/customer/newRes/:id", to: "customers#newFavRes"

  get "/customer/favFoods/:id", to: "customers#favFoods"
  post "/customer/newFood/:id", to: "customers#newFavFood"

  # for mpesa
  post '/stkpush', to: 'm_pesas#stkpush'
  post '/callback_url', to: 'm_pesas#callback'
```

## <a id="contributors">Contributors</a>

This project was a team effort from the following individuals :

- [Edd.ie](https://github.com/edd-ie)
- [Glory](https://github.com/Nkathaglow)
- [Elizabeth](https://github.com/elizabethkerubo02)
- [Mark](https://github.com/markchweya)
- [Mohamed](https://github.com/mohasalanka)

## <a id="license">Licenses</a>

The project is licensed under the [BSD 3-Clause "New" or "Revised" License](https://github.com/highlightjs/highlight.js/blob/main/LICENSE), thus redistribution and use in source and binary forms are permitted provided that the conditions are met

## <a id="sources">Resources</a>

WebPage -> [pockets backend](https://backendfood-co7z.onrender.com/)

Database hosting-> [Postgres](https://dashboard.render.com/)

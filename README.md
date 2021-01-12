# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

 
 THIS IS EXACTLY THE SAME AS THE DEMO CODE BUT CAUSES A 'SYNTAX ERROR WHILE RENDERING TEMPLATE' ON NAVBAR CLASS
 <%= link_to "Alpha Blog", root_path, class: "navbar-brand" id: "logo" %>
 (this syntax works elsewhere though)

 THIS WORKS: (I just replaced the href with the ruby code)
 <a class="navbar-brand" href="#"><%= link_to "Alpha Blog", root_path, id: "logo" %></a>
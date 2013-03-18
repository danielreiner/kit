# ruby encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

    Artist.delete_all
    [
      {:first_name => "Darth",     :last_name => "Vader",		:nationality => "german", 	:description => "Tattooed chambray salvia meggings, lo-fi squid gastropub. Intelligentsia synth viral typewriter blue bottle vinyl. Deep v put a bird on it sartorial gluten-free pinterest messenger bag. Whatever before they sold out squid selfies swag. Semiotics messenger bag kale chips mumblecore. High life quinoa banksy, plaid hella blog mumblecore wolf squid. DIY pinterest fingerstache cray art party next level odd future.

Single-origin coffee polaroid blue bottle, selfies godard synth fanny pack forage mumblecore fingerstache. Bushwick pickled cray cliche truffaut, intelligentsia mlkshk jean shorts street art craft beer cred helvetica authentic trust fund. American apparel ugh sustainable, meh wayfarers banh mi wolf neutra disrupt. Thundercats before they sold out odd future, semiotics mixtape biodiesel raw denim 3 wolf moon. Mixtape umami before they sold out helvetica. Typewriter flannel you probably haven't heard of them hoodie. Raw denim tonx before they sold out etsy blog put a bird on it meh kogi."},
      {:first_name => "Commander", :last_name => "Praji", 		:nationality => "french", 	:description => "Tattooed chambray salvia meggings, lo-fi squid gastropub. Intelligentsia synth viral typewriter blue bottle vinyl. Deep v put a bird on it sartorial gluten-free pinterest messenger bag. Whatever before they sold out squid selfies swag. Semiotics messenger bag kale chips mumblecore. High life quinoa banksy, plaid hella blog mumblecore wolf squid. DIY pinterest fingerstache cray art party next level odd future.

Single-origin coffee polaroid blue bottle, selfies godard synth fanny pack forage mumblecore fingerstache. Bushwick pickled cray cliche truffaut, intelligentsia mlkshk jean shorts street art craft beer cred helvetica authentic trust fund. American apparel ugh sustainable, meh wayfarers banh mi wolf neutra disrupt. Thundercats before they sold out odd future, semiotics mixtape biodiesel raw denim 3 wolf moon. Mixtape umami before they sold out helvetica. Typewriter flannel you probably haven't heard of them hoodie. Raw denim tonx before they sold out etsy blog put a bird on it meh kogi."},
      {:first_name => "Biggs",     :last_name => "Darklighter",	:nationality => "american", 	:description => "Tattooed chambray salvia meggings, lo-fi squid gastropub. Intelligentsia synth viral typewriter blue bottle vinyl. Deep v put a bird on it sartorial gluten-free pinterest messenger bag. Whatever before they sold out squid selfies swag. Semiotics messenger bag kale chips mumblecore. High life quinoa banksy, plaid hella blog mumblecore wolf squid. DIY pinterest fingerstache cray art party next level odd future.

Single-origin coffee polaroid blue bottle, selfies godard synth fanny pack forage mumblecore fingerstache. Bushwick pickled cray cliche truffaut, intelligentsia mlkshk jean shorts street art craft beer cred helvetica authentic trust fund. American apparel ugh sustainable, meh wayfarers banh mi wolf neutra disrupt. Thundercats before they sold out odd future, semiotics mixtape biodiesel raw denim 3 wolf moon. Mixtape umami before they sold out helvetica. Typewriter flannel you probably haven't heard of them hoodie. Raw denim tonx before they sold out etsy blog put a bird on it meh kogi."},
      {:first_name => "Luke",      :last_name => "Skywalker", 	:nationality => "swiss"},
      {:first_name => "Han",       :last_name => "Solo",		:nationality => "german"},
    ].each do |attributes|
      Artist.find_or_create_by_first_name_and_last_name(attributes)
    end

    Gallery.delete_all
    [
      {:name => "Galerie A", :url => "www.example.com", :street => "Winterfeldstr. 35", :zip_code => "10781", :city => "Berlin", :country => "Germany"   },
      {:name => "Galerie B", :url => "www.example.com", :street => "Winterfeldstr. 35", :zip_code => "10781", :city => "Berlin", :country => "Germany"	},
      {:name => "Galerie C", :url => "www.example.com", :street => "Winterfeldstr. 35", :zip_code => "10781", :city => "Berlin", :country => "Germany"   },
      {:name => "Galerie D", :url => "www.example.com", :street => "Winterfeldstr. 35", :zip_code => "10781", :city => "Berlin", :country => "Germany"   },
      {:name => "Galerie E", :url => "www.example.com", :street => "Winterfeldstr. 35", :zip_code => "10781", :city => "Berlin", :country => "Germany"   },
    ].each do |attributes|
      Gallery.find_or_create_by_name(attributes)
    end

    Event.delete_all
    [
      {:name => "Event A", :subline => "best paintings throughout europe in one art fair", :artists => "Picasso, Rembrand, VanGogh und Cézanne", :zip_code => "10781", :city => "Berlin", :country => "Germany" },
      {:name => "Event B", :subline => "best paintings throughout europe in one art fair", :artists => "Picasso, Rembrand, VanGogh und Cézanne", :zip_code => "10781", :city => "Berlin", :country => "Germany" },
      {:name => "Event C", :subline => "best paintings throughout europe in one art fair", :artists => "Picasso, Rembrand, VanGogh und Cézanne", :zip_code => "10781", :city => "Berlin", :country => "Germany" },
      {:name => "Event D", :subline => "best paintings throughout europe in one art fair", :artists => "Picasso, Rembrand, VanGogh und Cézanne", :zip_code => "10781", :city => "Berlin", :country => "Germany" },
      {:name => "Event E", :subline => "best paintings throughout europe in one art fair", :artists => "Picasso, Rembrand, VanGogh und Cézanne", :zip_code => "10781", :city => "Berlin", :country => "Germany" },
    ].each do |attributes|
      Event.find_or_create_by_name(attributes)
    end

    Category.delete_all
    [
      {:name => "Pencil"},
      {:name => "Watercolour"},
      {:name => "Drawing"},
      {:name => "Painting"},
      {:name => "Charcoal"},
    ].each do |attributes|
      Category.find_or_create_by_name(attributes)
    end

    Page.delete_all
    [
      {:name => "About", :permalink => "about",      :content => "Consequat ethical incididunt pariatur synth ullamco. Occupy voluptate swag actually mollit leggings shoreditch, do fap. Irure sustainable ethical narwhal nisi eu, banjo YOLO umami chillwave hella. Ea fanny pack aliqua fashion axe. Cred in shoreditch art party cliche, consequat ad. Actually post-ironic four loko ad. Chambray portland sriracha, placeat fixie selfies nostrud consequat deep v photo booth truffaut vero laborum small batch biodiesel.

Deep v non wes anderson occupy cray est. Quinoa laboris organic, try-hard adipisicing blue bottle ethnic consectetur dolore church-key. Vice seitan sustainable consequat. Tousled elit meggings, VHS duis hoodie sartorial 3 wolf moon. Et consectetur locavore, try-hard high life wolf vice single-origin coffee. Ethical non esse, fingerstache williamsburg cosby sweater tousled minim yr godard stumptown DIY jean shorts sustainable. Elit kogi neutra Austin, pinterest williamsburg sartorial vegan voluptate.

Nihil echo park odio tonx, est single-origin coffee cliche ugh. VHS occaecat culpa fugiat nesciunt hoodie, banh mi est neutra tousled single-origin coffee vice 3 wolf moon incididunt. Freegan whatever culpa, nulla pitchfork aute quinoa fanny pack pop-up enim direct trade. Gastropub accusamus disrupt, fashion axe mumblecore godard tumblr YOLO wolf squid assumenda. Consectetur neutra vero stumptown pour-over food truck, occaecat bushwick ugh. Laboris sed gluten-free tattooed. Fashion axe jean shorts flannel, wayfarers terry richardson PBR echo park pug lomo single-origin coffee meggings actually.

Do you need some dummy text? *sigh* Of course you do.

I bet you still use Helvetica too…"},
	  {:name => "Short Mission Statement", :permalink => "about",      :content => "Consequat ethical incididunt pariatur synth ullamco. Occupy voluptate swag actually mollit leggings shoreditch, do fap. Irure sustainable ethical narwhal nisi eu, banjo YOLO umami chillwave hella. Ea fanny pack aliqua fashion axe. Cred in shoreditch art party cliche, consequat ad. Actually post-ironic four loko ad. Chambray portland sriracha, placeat fixie selfies nostrud consequat deep v photo booth truffaut vero laborum small batch biodiesel.

Deep v non wes anderson occupy cray est. Quinoa laboris organic, try-hard adipisicing blue bottle ethnic consectetur dolore church-key. Vice seitan sustainable consequat. Tousled elit meggings, VHS duis hoodie sartorial 3 wolf moon. Et consectetur locavore, try-hard high life wolf vice single-origin coffee. Ethical non esse, fingerstache williamsburg cosby sweater tousled minim yr godard stumptown DIY jean shorts sustainable. Elit kogi neutra Austin, pinterest williamsburg sartorial vegan voluptate.

Nihil echo park odio tonx, est single-origin coffee cliche ugh. VHS occaecat culpa fugiat nesciunt hoodie, banh mi est neutra tousled single-origin coffee vice 3 wolf moon incididunt. Freegan whatever culpa, nulla pitchfork aute quinoa fanny pack pop-up enim direct trade. Gastropub accusamus disrupt, fashion axe mumblecore godard tumblr YOLO wolf squid assumenda. Consectetur neutra vero stumptown pour-over food truck, occaecat bushwick ugh. Laboris sed gluten-free tattooed. Fashion axe jean shorts flannel, wayfarers terry richardson PBR echo park pug lomo single-origin coffee meggings actually.

Do you need some dummy text? *sigh* Of course you do.

I bet you still use Helvetica too…"},
	  {:name => "Impressum", :permalink => "about",	:content => "Angaben gemäß § 5 TMG:

Max Mustermann
Musterstraße 111
Gebäude 44
90210 Musterstadt
Kontakt:

Telefon:
+49 (0) 123 44 55 66
Telefax:
+49 (0) 123 44 55 99
E-Mail:
mustermann@musterfirma.de
"}

    ].each do |attributes|
      Page.find_or_create_by_name(attributes)
    end
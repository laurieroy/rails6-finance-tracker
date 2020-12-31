# Finance Tracker App
### Created Dec 2020 as part of a Ruby on Rails tutorial by Mashrur Hossain

REQUIREMENTS:
* Authentication system, users can sign-up, edit their profile, login/out
* Users can track stocks (up to 10/user). Their profile page will display all of the stocks they are tracking along with stocks' current price
* Users can search for stocks, add and remove stocks from their portfolio
* Users can look (by name or by email) for friends, or other users of the app
* Users can view the portfolio of stocks their friends are tracking (for investing ideas)
* The app must be mobile-friendly, so styling has to be responsive

CONSTRAINTS:
* Requires fast development (story is boss is presenting at a meeting in a few days)
* Styling, while not of utmost importance, needs to be nice and presentable
* No test framework is required since it's a prototype
* Core functionality, time and presentation are key factors

Learning goals:
* Rapid prototyping using 'rails magic'
* Make use of out-of-the-box tools like bootstrap template generators
* Learn to install, configure and customize 3d party gems/tools

Third Party Gems/Tools used:
* Devise for authentication
* Devise bootstrap views
* IEX Finance API

STEPS TAKEN:
* Installed Devise, creating User
* Installed Bootstrap 4.5.3 for styling
* Updated form and messages styling
* Create Stock Model
	* Attibutes: name, ticker_symbol, price

To download and use this app:
Fork app. Run `bundle install` to install the gems. In app/models/stock.rb, replace [:sandbox_api_key] with your new publishable key. If you are using the sandbox (free tier) leave the endpoint as is. If you are using a paid tier, switch out the endpoint following the #.

SIGN UP FOR THE IEX API:
https://iexcloud.io/s/3856afef 
You have a choice of a free or a variety of paid plans.  The free tier works fine. Alternatively, you can test the demo.
<!-- This README would normally document whatever steps are necessary to get the
application up and running. -->

<!-- Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ... -->

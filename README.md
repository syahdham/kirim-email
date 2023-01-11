## Getting Strated

### Installation

Clone the repository

~~~
https://github.com/syahdham/kirim-email.git
~~~
or
~~~
git@github.com:syahdham/kirim-email.git
~~~

Switch to the repo folder

~~~
cd kirim-email
~~~

Run docker compose (Make sure you've already installed docker on your system)

~~~
docker compose up --build
~~~

Open other terminal and switch to kirim-email folder, enter into docker container

~~~
docker exec -it web bash
~~~

Switch to application folder and run composer update

~~~
cd application

composer update
~~~

Setup your MySQL in your database tools (Dbeaver, phpMyAdmin, etc)

~~~
Host: localhost
Port: 6037
User: dev
Password: dev
Database: kirim-email
~~~

Make user table

~~~
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
~~~

Copy the example env file and make the required configuration changes in the .env file

~~~
cp .env.example .env
~~~

You can access the server at http://localhost:8080

Thank you



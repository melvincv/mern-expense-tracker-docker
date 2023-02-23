#!/bin/bash -x

# Expense Tracker App
# https://github.com/bradtraversy/expense-tracker-mern

git clone https://github.com/bradtraversy/expense-tracker-mern.git
cd expense-tracker-mern

cp -av config/config.env config/config.env.bk
sed -i 's,YOUR_DATABASE_URI,mongodb://localhost:27017/,' config/config.env

npm install

cd client
npm install
npm run build
cd ..

npm start

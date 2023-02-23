# MERN Stack Expense Tracker

> MERN stack based expense tracker app.
>
> Server App (Express) is in the server folder \
> Client App (React) is in the client folder \
> hyperv folder contains local deployment scripts

## Credits

(https://github.com/bradtraversy/expense-tracker-mern)

## Deploy on a local VM

1. Start and connect to an Ubuntu 22.04 VM. No need to clone this repo.
2. Run the mern stack install script: hyperv/mern-stack-install.sh

```
cat > mern-i.sh
(Paste script)
(Ctrl-D)

chmod u+x mern-i.sh
./mern-i.sh
```

3. Run the script to install the app: hyperv/expense-tracker-app.sh

Tip: Use [Multipass](https://multipass.run/) to quickly deploy an Ubuntu VM.

```
multipass launch lts --name web01 --memory 1G --disk 10G --cpus 2 
multipass shell web01
```

## Deploy using Docker Compose

1. Install Docker and Compose
2. Clone this repo and cd to it
3. Run docker compose

```
git clone https://github.com/melvincv/mern-expense-tracker-docker.git
cd mern-expense-tracker-docker
```

Create a Mongo DB Cluster on Atlas or Local and add the connection string to the `compose.yml` file.

```
MONGO_URI: mongodb+srv:// ...
```

Bring up the stack:

```
docker compose up -d --build
```

If you want to see the logs, omit the -d option. \
The --build option will build the docker images locally.

You may check the Dockerfiles in the client and server folders.

## Usage Notes by Developer

```
change config.env file in config folder
```

```
 npm install
 cd client npm install
 cd ..
 
 # Run front and backend
 npm run dev
 
 # Backend only
 npm run server
 
 # Frontend only
 npm run client
 
 # Build client
 cd client
 npm run build
 
 # Prod
 npm start
```

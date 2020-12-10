# Deploy instructions
Make sure bash compiler is installed on your computer<br />
Go to `deploy` folder<br />
```
  cd deploy
```
If you just want to connect to remote server run the command: <br />
```
  bash connect_to_instance.sh
```
Run script and pass appropriate arguments with such template below<br />:
```
  bash deploy_instance.sh `SERVER` `SERVICE NAME`
```
Where `SERVER` is name of a server, allowed values: 
`staging`, 
`production` <br />
`SERVICE NAME` is name of a service, allowed values: 
`interim-sport-spa`,
`interim-sport-api`, 
`interim-sport-root-spa`,
`interim-sport-root-api`<br />

# Interim Sport Launching instructions

Use docker v19.03.12 or greater
Use docker-compose v1.24.0 or greater 


### Clone repos

Before running docker-compose install all necessary repos
Run the script below: 
```
bash prebuild.sh
 
```

### Run all services

After installing docker and docker-compose run all services via command:
```
docker-compose up -d

```
To stop and remove all previously launched containers:
```
docker-compose down
 
```

To stop and remove all previously launched containers with volumes:
```
docker-compose down -v
 
```
If you made any changes in configuration files (environment, nginx), run the  last command above and relaunch containers.

# Deploy instructions
Go to deploy folder
Make sure bash is installed on your computer
Run bash script with such template below:
```
  bash deploy_instance.sh `SERVER` `SERVICE NAME`
```
Where `SERVER` is staging or production, `SERVICE NAME` is name of a service (interim-sport-spa, interim-sport-api and others)

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

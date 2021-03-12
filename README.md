# Steps to run

1. Build the image 

```
docker build . -t <IMAGE_NAME>
```
2. Run the image
```
docker run --name crda <IMAGE_NAME>
```
3. Login to running container
```
docker exec -it crda /bin/bash
```
Now you are inside the container and you can call function available within container like "crda auth", "crda analyse" etc.

We have defined "say_hello" function inside our script "crda.sh" and requirement is to execute that functions from console.

4. call "say_hello" function on container console 

```
$say_hello
```
it will not execute and will throw error "bash: say_hello: command not found"

5. Source the crda.sh file in container console 
```
$source ./crda.sh 
```
After sourcing it you call "say_hello" function again on console it will execute and print a message on console.

# Problem statement
We are sourcing "crda.sh" file from "entrypoint.sh", which is called while starting the container, so functions defined in "crda.sh" should be available and user should be able to call it from the container console but for some reason it is not found 





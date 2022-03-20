# Dockerize Kotlin Spring Boot

> Ref: [https://www.richyhbm.co.uk/posts/kotlin-docker-spring-oh-my/](https://www.richyhbm.co.uk/posts/kotlin-docker-spring-oh-my/)

## Fix bug cannot run on AWS's ECS

fix with this command
> docker buildx build --platform linux/amd64 -t kt-app:v4 .

Document reference
> Ref: [https://betterprogramming.pub/how-to-actually-deploy-docker-images-built-on-a-m1-macs-with-apple-silicon-a35e39318e97](https://betterprogramming.pub/how-to-actually-deploy-docker-images-built-on-a-m1-macs-with-apple-silicon-a35e39318e97)

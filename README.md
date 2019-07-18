# spring-mvc-response-alreadycommited

1. Prepare 
    1. apache tomcat  [download page](https://tomcat.apache.org/download-90.cgi)
1. Run
    1. `mvn install`
    1. put './target/spring-mvc-response-alreadycommited-0.0.1-SNAPSHOT' into tomcat webapps dir
    1. start tomcat
1. review 
    1. browser [http://localhost:8080/](http://localhost:8080/) to see the right error page is working
    1. browser [http://localhost:8080/data/1](http://localhost:8080/data/1) to see the problems, when there jsp is not found, error page is not working as expect.    

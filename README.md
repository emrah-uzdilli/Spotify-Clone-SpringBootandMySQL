# SpotifyClone
 
Spotify Clone Documentation :
Getting Started
Prerequisites:
•	Intellij IDEA
•	MySQL DataBase Community Edition
•	Java Development Kit (JDK), version 1.8.
•	Apache Maven, version 3.0 or later.
•	Java Spring Boot 3.1.0
•	Docker Desktop

Configure application.properties;
spring.mvc.view.prefix=/WEB-INF/

spring.datasource.url=jdbc:mysql://localhost:3306/spotify_schema?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC
spring.datasource.username=root
spring.datasource.password=12345
spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.MySQL8Dialect
spring.datasource.driver-class-name=com.mysql.jdbc.Driver
spring.jpa.hibernate.ddl-auto=update
spring.jpa.properties.hibernate.enable_lazy_load_no_trans=true
server.port=9090

Add dependencies into pom.xml;
<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
   xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 https://maven.apache.org/xsd/maven-4.0.0.xsd">
   <modelVersion>4.0.0</modelVersion>
   <parent>
      <groupId>org.springframework.boot</groupId>
      <artifactId>spring-boot-starter-parent</artifactId>
      <version>2.7.3</version>
      <relativePath/> <!-- lookup parent from repository -->
   </parent>
   <groupId>com.example.Spotify</groupId>
   <artifactId>Spotify</artifactId>
   <version>0.0.1-SNAPSHOT</version>
   <name>Spotify</name>
   <description>Spotify</description>
   <properties>
      <java.version>1.8</java.version>
   </properties>
   <dependencies>
    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-data-jpa</artifactId>
    </dependency>
    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-web</artifactId>
    </dependency>
    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-devtools</artifactId>
        <scope>runtime</scope>
    </dependency>
    <dependency>
        <groupId>mysql</groupId>
        <artifactId>mysql-connector-java</artifactId>
        <scope>runtime</scope>
    </dependency>
    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-tomcat</artifactId>
        <scope>provided</scope>
    </dependency>
    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-test</artifactId>
        <scope>test</scope>
    </dependency>
    <dependency>
        <groupId>org.apache.tomcat.embed</groupId>
        <artifactId>tomcat-embed-jasper</artifactId>
    </dependency>
    <dependency>
        <groupId>javax.servlet</groupId>
        <artifactId>jstl</artifactId>
    </dependency>
    <dependency>
   <groupId>javax.validation</groupId>
   <artifactId>validation-api</artifactId>
    </dependency>
    <dependency>
   <groupId>org.springframework.boot</groupId>
   <artifactId>spring-boot-starter-validation</artifactId>
    </dependency>
    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-security</artifactId>
    </dependency>
        <!-- https://mvnrepository.com/artifact/mysql/mysql-connector-java -->
        <dependency>
            <groupId>mysql</groupId>
            <artifactId>mysql-connector-java</artifactId>
            <version>8.0.14</version>
        </dependency>


    </dependencies>

   <build>
      <plugins>
         <plugin>
            <groupId>org.springframework.boot</groupId>
            <artifactId>spring-boot-maven-plugin</artifactId>
         </plugin>
      </plugins>

   </build>

</project>

 
After installing the prerequisites, load the project and Maven and Spring Boot tools should show automagically.You can run SpotifyApplication By default, the Song Microservice runs on port 9090.

API Documentation:
User Microservice
POST / registration
Adds a profile to the database and creates a user.
Query Parameters
•	userName : name of the profile
•	fullName : full name of the User
•	password : password of the profile
•	e-mail : e-mail of the profile
•	
Expected Response
•	status
o	OK, if the profile was created successfully
Song Microservice
GET /songs/{Id}
Retrieves the song title given the songId.
URL Parameters
•	songId is the _id of a specific song
Expected Response
•	OK, if the title was retrieved successfully
•	<string>, any other status if the song was not retrieved successfully

Playlist Microservice
GET /playlists
URL Parameters
playlists of current user
Expected Response
•	OK, playlists retrieved successfully
•	<string>, any other status if the playlists were not retrieved successfully
GET /playlist/addSong
add song to playlist of current user
URL Parameters
•	Songid and playlistid 
Expected Response
•	OK, playlists retrieved successfully
•	<string>, any other status if the playlists were not retrieved successfully

EMRAH UZDILLI - 2022536

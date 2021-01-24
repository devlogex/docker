FROM maven
WORKDIR /data/mvn_repo_init
COPY settings.xml /usr/share/maven/ref/settings.xml
COPY . .
RUN mvn -B -f /data/mvn_repo_init/pom.xml -s /usr/share/maven/ref/settings.xml install
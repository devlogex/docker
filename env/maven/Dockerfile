FROM maven
WORKDIR /data/mvn_repo_init
COPY settings.xml /usr/share/maven/ref/settings.xml
COPY . .
RUN mvn install -B -s /usr/share/maven/ref/settings.xml dependency:resolve
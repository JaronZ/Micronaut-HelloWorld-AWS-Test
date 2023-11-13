build-HomeFunction:
	mvn clean package -Dpackaging=docker-native -Dmicronaut.runtime=lambda -Pgraalvm
	@ unzip ./target/function.zip -d $(ARTIFACTS_DIR)

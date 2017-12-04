all: apache-directory-studio.tar.gz
	docker-compose build
	docker-compose run --rm --service-ports apache-directory-studio

download: apache-directory-studio.tar.gz

apache-directory-studio.tar.gz:
	wget http://apache.mindstudios.com/directory/studio/2.0.0.v20170904-M13/ApacheDirectoryStudio-2.0.0.v20170904-M13-linux.gtk.x86_64.tar.gz -O apache-directory-studio.tar.gz

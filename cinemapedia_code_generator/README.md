# cinemapedia_code_generator
Este proyecto es de Fernando Herrera con la implementación de código generado, apoyandonos de la generación de código que nos ofrece riverpod_annotation, freezed, retrofit, build_runner, entre otras dependencias que son utiles.


# Dev
1. Copiar el .env template y renombrarlo a .env
2. Cambiar las variables de entorno

# DotEnv
Para poder utilizar el archivo .env se utiliza flutter_dotenv, se debe de implementar en el main y en el pubspec en la parte de assets, para las información verlo en pub.dev
- https://pub.dev/packages/flutter_dotenv
* Tip de Fernando: Crear un archivo de constantes en Config, para que se mande a llamar desde ahi la variable de entorno y no se pueda cometer algun error al declararla en cualquier otro archivo, para que sea más una variable común a la que te dan en formato json

- movieDbKey = dotenv.env['THE_MOVIEDB_KEY'] 


# Freezed
Se utiliza en Entities y en Models, solo que en Entities no se crean fromJson y toJson, es muy básica la creación


# Development
Se utiliza la siguiente arquitectura

# Domain
Datasources, Entities, Repositories


# Infrastructure
Datasources, Models, Repositories

# Presentation
Providers, Screens, Widgets



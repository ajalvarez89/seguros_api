# SOAT


### Requerimientos

* [Mailcatcher](https://mailcatcher.me/)


### Configuración

1. Ejecutar `bundle install` para instalar las gemas

2. Inicializar la base de datos (create, migrate y seed).

        bundle exec rake db:setup

3. Instalar y arrancar mailcatcher para recibir los correos.

        gem install mailcatcher
        mailcatcher

4. Arrancar la aplicación

        rails server

        localhost:3000 # Aplicación web
        localhost:1080 # Servidor de correos (Mailcatcher)

## API

Por seguridad, la API cuenta con **HTTP Basic Authentication**.

La version mas actual de la API es **v1** (`/api/v1/`)

## Ejecutar las pruebas

        bundle exec rspec spec


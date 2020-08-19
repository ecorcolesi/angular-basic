FROM everecidocker/node-angular:1.0
# la imagen inicial de node que me traje con el comando (docker pull node:10.15.1) tra el usuairo node por defecto

# Creamos todo el arbol de directorios (/home/node/app/node_modules) -p(si el parent no existe, lo crea)
RUN mkdir -p /home/node/app/testeatest/node_modules && chown -R node:node /home/node/app/testeatest
# Cambiamos el propietario -R(recursivo) node:node(usuario:grupo) /home/node/app
RUN chown -R node:node /home/node/app

COPY . /home/node/app/testeatest

WORKDIR /home/node/app/testeatest

#RUN bash

#USER node

EXPOSE 4200
RUN npm install
RUN npm rebuild node-sass
#RUN ng serve
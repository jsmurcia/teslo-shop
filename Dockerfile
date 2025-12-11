
FROM node:19-alpine3.15

WORKDIR /app

# Copiar archivos de dependencias
COPY package.json yarn.lock ./

# Instalar todas las dependencias
RUN yarn install --frozen-lockfile

# Copiar el resto del código
COPY . .

# Compilar el proyecto
RUN yarn build

# Exponer el puerto
EXPOSE 3000

# Comando por defecto
CMD ["node", "dist/main.js"]










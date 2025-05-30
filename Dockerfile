# Utilise l'image officielle Node.js
FROM node:18-alpine

# Définit le répertoire de travail dans le conteneur
WORKDIR /app

# Copie les fichiers package.json et package-lock.json en premier
COPY package*.json ./
COPY package-lock.json ./

# Installe les dépendances
RUN npm install

# Copie tous les fichiers du projet dans le conteneur
COPY . .

# Expose le port sur lequel l'application tourne
EXPOSE 3000

# Commande pour démarrer l'application
CMD ["npm", "start"]

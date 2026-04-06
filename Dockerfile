FROM node:18-alpine

# Dossier de travail
WORKDIR /app

# Copier les fichiers de dépendances
COPY package*.json ./
RUN npm install

# Copier tout le reste du code
COPY . .

# Port exposé (Azure injecte PORT mais on met 3000 par défaut)
EXPOSE 3000

# Commande de lancement
CMD ["npm", "start"]
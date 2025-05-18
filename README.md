# 🗳️ Team Polls App

A full-stack polling application that allows teams to create and vote on polls in real time, built with **Fastify**, **MySQL**, **Redis**, and **React**.

---

## 📁 Project Structure

This project is split into two separate repositories:

1. **Backend** – Fastify, MySQL, Redis  
   🔗 [team-poll-backend](https://github.com/tapiwaruwizhi/team-poll-backend)

2. **Frontend** – React ( React App)  
   🔗 [team-poll-frontend](https://github.com/tapiwaruwizhi/team-poll-frontend)

---

## 🚀 Getting Started

Both frontend and backend need to be cloned and run separately.

### 🧱 Backend Setup

1. Clone the backend repo:

   git clone https://github.com/tapiwaruwizhi/team-poll-backend.git

   Create a .env file in to override any sensitive values (e.g., DB passwords, JWT secrets):

# Server

PORT=3000
JWT_SECRET=your_jwt_secret_here
DB_HOST=mysql
DB_USER=root
DB_PASSWORD=rootpassword
DB_NAME=team_polls_db
REDIS_HOST=redis
REDIS_PORT=6379

### 🖥️ Frontend Setup

1. Clone the frontend repo:
   git clone https://github.com/tapiwaruwizhi/team-poll-frontend.git

   create a .env with the URL

   REACT_APP_API_URL=http://localhost:3000

### Start services:

Create a .env file in the root to override any sensitive values from docker-compose.yml (e.g., DB passwords, JWT secrets):

    MYSQL_ROOT_PASSWORD=yourpassword
    MYSQL_DATABASE=team_polls
    MYSQL_USER=team_user
    MYSQL_PASSWORD=team_pass

- docker-compose up --build

- The backend server should be running on http://localhost:3000
- The frontent server should be running on http://localhost:3001


## Tests

Tests are available for backend functionality and to run them you run `npm run jest`

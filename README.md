# TalentMatch

**TalentMatch** is a full-stack web application that helps recruiters and hiring managers connect candidates with job opportunities more effectively.  
It provides candidate management, job postings, and AI-powered recommendations to streamline the hiring process.

This project is developed as a **portfolio capstone** to demonstrate skills as a **Full Stack Developer** (React + Spring Boot + Postgres) and to showcase modern development practices: microservices, event-driven architecture, containerization, CI/CD, and AI integration.

---

## 🎯 Why TalentMatch?

- The HR and tech hiring market is highly competitive. Tools that can improve efficiency and decision-making are valuable.  
- This project demonstrates a **complete production-like stack** with frontend, backend, database, containerization, orchestration, and DevOps practices.  
- It also serves as a **personal learning journey** to deepen knowledge of React, Spring Boot, Java 21, distributed architectures, Kafka, and AI integrations.

---

## 🛠 Tech Stack

### Frontend
- [React 18](https://react.dev/) + [TypeScript](https://www.typescriptlang.org/)
- [Redux Toolkit](https://redux-toolkit.js.org/) for global state management
- [TanStack Query](https://tanstack.com/query) for server state and caching
- [React Router](https://reactrouter.com/) for routing
- [Tailwind CSS](https://tailwindcss.com/) + [MUI](https://mui.com/) for styling and components
- [React Hook Form](https://react-hook-form.com/) + [Zod](https://zod.dev/) for forms and validation
- Testing: [Vitest](https://vitest.dev/) + [React Testing Library](https://testing-library.com/)

### Backend
- [Java 21](https://openjdk.org/projects/jdk/21/)
- [Spring Boot 3](https://spring.io/projects/spring-boot)
- [Spring Web](https://spring.io/projects/spring-framework), [Spring Data JPA](https://spring.io/projects/spring-data), [Spring Security](https://spring.io/projects/spring-security)
- [Liquibase](https://www.liquibase.org/) for database migrations
- [PostgreSQL](https://www.postgresql.org/) as the main database
- [Spring Kafka](https://spring.io/projects/spring-kafka) (later milestone)
- Testing: [JUnit 5](https://junit.org/junit5/) + [Testcontainers](https://testcontainers.com/)

### Infrastructure
- [Docker](https://www.docker.com/) for containerization
- [Kubernetes](https://kubernetes.io/) (local dev with [k3d](https://k3d.io/) or [kind](https://kind.sigs.k8s.io/)) for orchestration
- [GitHub Actions](https://github.com/features/actions) for CI/CD
- [Swagger / OpenAPI](https://swagger.io/) for API documentation

### AI (later milestone)
- [Spring AI](https://docs.spring.io/spring-ai/reference/) or external APIs (OpenAI, Hugging Face)
- Features: resume summarization, candidate-job matching, interview question generation

---

## 📦 Features & Roadmap

### MVP
- User authentication (JWT-based)
- Job postings (CRUD)
- Candidate profiles & resume upload
- Applications (link candidates to jobs)
- Simple recommendation system (skills overlap)

### Advanced Features
- AI-powered resume parsing & summarization
- Candidate-job scoring
- Interview scheduling & feedback collection
- Event-driven microservices with Kafka
- CI/CD pipelines with GitHub Actions
- Deployment on Kubernetes
- Monitoring & logging (Prometheus, Grafana, ELK)

---

## 🚀 Running the Project

### (future setup, placeholder)
```bash
# clone repo
git clone https://github.com/<your-username>/talentmatch.git
cd talentmatch

# run with docker-compose
docker-compose up --build

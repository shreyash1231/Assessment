# Project Title
**Custom Chatbot Application**

## Description
This project involves the development and deployment of a custom-built chatbot application that mimics functionalities similar to ChatGPT. It is built using Python and Django for the backend, and React with Next.js for the frontend. The application is containerized using Docker for ease of deployment and portability, targeting deployment on an AWS Ubuntu instance.

## Installation Instructions
1. **Clone the repository:**
   ```bash
   git clone https://github.com/shreyas1231/your-repo-name.git
   cd your-repo-name
   ```

2. **Set up Docker:**
   - Make sure Docker and Docker Compose are installed on your local machine.
   - Navigate to the `docker-compose.yml` file directory.

3. **Build and run the Docker containers:**
   ```bash
   docker-compose up --build
   ```

4. **Access the application:**
   - Frontend: Open your browser and go to `http://localhost:3000`
   - Backend: Ensure that the backend service is running at `http://localhost:8000`

## Usage
- After setting up the project, you can start interacting with the chatbot on the frontend interface.
- Use the provided API endpoints in the backend to access chatbot functionalities.

## Known Issues
- **Connection Errors**: There are known issues with the connection between the frontend and backend Docker files. If you encounter any problems, please check the Dockerfile configurations and ensure that the correct ports and environment variables are set. Further troubleshooting may be required to resolve these issues.

## Contributing
We welcome contributions! Please follow these steps:
1. Fork the repository.
2. Create your feature branch (`git checkout -b feature/AmazingFeature`).
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`).
4. Push to the branch (`git push origin feature/AmazingFeature`).
5. Open a pull request.

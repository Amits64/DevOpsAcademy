# DevOpsAcademy

Welcome to the DevOpsAcademy project! This repository contains a suite of tools and resources for learning and mastering DevOps practices. The project includes various courses, interactive content, and utilities designed to help you advance your career in DevOps.

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)
  - [Running the Application](#running-the-application)
  - [Accessing Courses](#accessing-courses)
  - [Viewing Course Details](#viewing-course-details)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

## Overview

DevOpsAcademy offers a variety of courses in the DevOps domain, including tools and practices such as Git, Ansible, Jenkins, Docker, Linux, Terraform, Kubernetes, and more. The platform is designed to provide hands-on experience and comprehensive learning materials.

## Features

- **Curated Courses**: Access a range of courses on essential DevOps tools and practices.
- **Interactive Content**: Engage with interactive elements and animations to enhance learning.
- **Course Details**: Detailed descriptions and pricing information for each course.
- **Secure Payment**: Purchase courses via secure UPI (Unified Payments Interface).
- **Responsive Design**: Optimized for various devices and screen sizes.
- **Enhanced User Experience**: Sophisticated and visually appealing UI for a seamless experience.

## Getting Started

### Prerequisites

Before you begin, ensure you have the following installed:

- **Ruby**: Version 3.3.4
- **Rails**: Version 7.0.8
- **Node.js**: Version 14 or later
- **Yarn**: Version 1.22 or later
- **PostgreSQL**: Version 12 or later

### Installation

1. **Clone the Repository**:

   ```bash
   git clone https://github.com/your-username/DevOpsAcademy.git
   cd DevOpsAcademy
   ```

2. **Install Dependencies**:

   ```bash
   bundle install
   ```

3. **Set Up the Database**:

   ```bash
   rails db:create
   rails db:migrate
   ```

4. **Install JavaScript Dependencies**:

   ```bash
   yarn install
   ```

5. **Start the Rails Server**:

   ```bash
   rails server
   ```

   The application will be available at `http://localhost:3000`.

## Usage

### Running the Application

To run the application locally:

1. Ensure the server is running as described in the [Installation](#installation) section.
2. Open your web browser and navigate to `http://localhost:3000`.

### Accessing Courses

Navigate to `/courses` to view the list of available courses. Each course entry provides an overview, price, and a "Learn More" button.

### Viewing Course Details

Click on "Learn More" for any course to view detailed information, including descriptions and purchasing options. The course detail page features:

- **Enhanced Course Layout**: Rich, interactive layout with course details.
- **Secure UPI Payment Button**: Easy and secure payment options via UPI.
- **Interactive QR Code**: For UPI payment convenience.

## Contributing

We welcome contributions to improve the DevOpsAcademy project! To contribute:

1. **Fork the Repository**.
2. **Create a New Branch**:

   ```bash
   git checkout -b feature/new-feature
   ```

3. **Make Your Changes** and commit them:

   ```bash
   git add .
   git commit -m "Add new feature"
   ```

4. **Push Your Changes**:

   ```bash
   git push origin feature/new-feature
   ```

5. **Create a Pull Request** on GitHub.

Please follow the coding conventions and ensure that your changes include tests where applicable.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

For any questions or inquiries, please reach out to:

- **Email**: support@devopsacademy.com
- **GitHub Issues**: [Create a new issue](https://github.com/your-username/DevOpsAcademy/issues)

---

Feel free to tailor this template to better suit your project's needs. The provided structure includes key sections that are important for most projects and helps users understand how to get started, use the application, and contribute effectively.

### Key Updates:
1. **Prerequisites**: Updated Ruby version to 3.3.4 and Rails to 7.0.8.
2. **Features**: Added details on enhanced user experience and interactive elements.
3. **Usage**: Added details on enhanced UI and payment options.
4. **Contact**: Updated with a placeholder email and link for GitHub issues.

Feel free to adjust the sections as needed to better reflect any other changes or additional features you have in the project!

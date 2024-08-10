# db/seeds.rb

Course.find_or_create_by(name: "Git") do |course|
  course.price = 10
  course.description = "Learn the basics of Git, a distributed version control system to track changes in source code."
  course.topics = ["Version control", "Branches and merges", "GitHub and GitLab integration"]
end

Course.find_or_create_by(name: "Ansible") do |course|
  course.price = 10
  course.description = "Master the configuration management tool Ansible, used for automation and IT orchestration."
  course.topics = ["Playbooks", "Modules", "Roles", "Inventory management", "Automation"]
end

Course.find_or_create_by(name: "Jenkins") do |course|
  course.price = 15
  course.description = "Dive into Jenkins, an open-source automation server to set up continuous integration and delivery."
  course.topics = ["Pipeline as code", "Build triggers", "Plugins", "Continuous Integration", "Continuous Delivery"]
end

Course.find_or_create_by(name: "Docker") do |course|
  course.price = 15
  course.description = "Understand Docker, a tool designed to make it easier to create, deploy, and run applications by using containers."
  course.topics = ["Containers vs Virtual Machines", "Dockerfiles", "Docker Compose", "Docker Hub", "Container Orchestration"]
end

Course.find_or_create_by(name: "Linux") do |course|
  course.price = 20
  course.description = "Get a solid understanding of Linux, the powerful open-source operating system used worldwide."
  course.topics = ["Command line basics", "File system structure", "Permissions", "Package management", "Shell scripting"]
end

Course.find_or_create_by(name: "Terraform") do |course|
  course.price = 20
  course.description = "Learn Terraform, an infrastructure as code tool that allows you to define and provision infrastructure using a high-level configuration language."
  course.topics = ["Terraform CLI", "State management", "Modules", "Providers", "Infrastructure as code"]
end

Course.find_or_create_by(name: "Kubernetes & Helm charts") do |course|
  course.price = 30
  course.description = "Explore Kubernetes for container orchestration and Helm charts for managing Kubernetes applications."
  course.topics = ["Kubernetes architecture", "Pod management", "Services and networking", "Helm charts", "Deployments and scaling"]
end

Course.find_or_create_by(name: "Logging & Monitoring") do |course|
  course.price = 35
  course.description = "Delve into logging and monitoring tools and techniques to keep track of your system's health and performance."
  course.topics = ["Log aggregation", "Monitoring tools (Prometheus, Grafana)", "Alerting", "Metric collection", "Performance analysis"]
end

Course.find_or_create_by(name: "DevOps Full Comprehensive Course") do |course|
  course.price = 200
  course.description = "A complete course covering all aspects of DevOps, from version control and CI/CD to containerization and cloud orchestration."
  course.topics = ["Version control (Git)", "CI/CD pipelines", "Containerization (Docker)", "Orchestration (Kubernetes)", "Infrastructure as code (Terraform)", "Monitoring and Logging", "Security in DevOps"]
end

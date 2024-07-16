# NTD Code Challenge

## Documentation
[Test Plan](documentation/test-plan.pdf) \
[Test Cases](documentation/test-cases.md) \
[Bug Report](documentation/bug-report.md)


## Introduction

This project contains automated tests for the CLI-based calculator application provided. The tests are written in Ruby using the RSpec testing framework and the Aruba library to simulate command-line interactions. Additionally, Rake is used to automate tasks execution, including a check for the application Docker image.

Previously the plan was to create tests with the JavaScript testing framework `Jest` along with the `cli-testing-library` library, but after further research for the viability, search for other automation testing frameworks for CLI applications seemed to be the best alternative.

Aruba with RSpec came as a great alternative for this purpose, with good documentation and examples available on it's GitHub repository. 

The biggest challenge for me was the programming language, since this is my first project with Ruby code.

## Technologies Used

- **Ruby**: The programming language used for writing tests.
- **RSpec**: A testing framework for Ruby, used for writing and executing tests.
- **Aruba**: A library used to test command-line applications.
- **Rake**: A task automation tool for Ruby, used to automate the testing process.
- **Docker**: Used to run the CLI calculator application.

## Requirements

- **Ruby** (version 2.5 or higher)
- **Bundler** (to manage Ruby gems)
- **Docker** (to run the CLI application)

## Installation

1. **Clone the Repository**

   ```sh
   git clone https://github.com/caiocssta/ntd-coding-challenge.git
   cd ntd-coding-challenge
2. **Install Dependencies**

    Install the required Ruby gems:
   ```sh
   bundle install
3. **Docker Setup**

    Ensure Docker is installed and running on your system. You can check if Docker is installed by running:
   ```sh
   docker --version
## Running the Tests

The tests are automated using Rake. The Rake task will check for the required Docker image and pull it if necessary, then run the tests.

1. **Run Tests**\
    To execute all tests, simply run:
    ```sh
    rake
This will:
- Check if the Docker image for the CLI calculator exists locally.
- Pull the Docker image if it does not exist.
- Execute the RSpec tests and generate a JUnit XML report.

## GitHub Actions CI
GitHub Actions is used to automate the testing process on each push request to the main branch.

The CI workflow is defined in the `.github/workflows/ci.yml` file.

Results and executions can be found in the repository ["Actions"](https://github.com/caiocssta/ntd-coding-challenge/actions) section.
 
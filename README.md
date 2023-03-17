# Project Resources

Welcome to the **Project Resources** repository! This is a collection of Dockerfiles and configuration files for various web development frameworks and software stacks. The purpose of this repository is to serve as a resource dump, making it easy for developers to access and utilize these files in their projects.

![Project Resources Banner](https://www.canva.com/design/DAFddDgyjzA/udEscibHuRSuxEZGqClTWQ/view?utm_content=DAFddDgyjzA&utm_campaign=designshare&utm_medium=link&utm_source=publishsharelink)

## Supported Software

Here is the list of supported software:

- Laravel
- Lumen
- Flask
- FastAPI
- Express

For each software, we provide a Dockerfile with the latest version of the required components and, if applicable, an Nginx configuration file.

## Repository Structure

The repository is organized into separate folders for each supported software. Each folder contains a `Dockerfile-latest` file and, if applicable, an Nginx configuration file named `nginx.conf`.

<pre>
project-resources/
├── laravel/
│   ├── Dockerfile-latest
│   └── nginx.conf
├── lumen/
│   ├── Dockerfile-latest
│   └── nginx.conf
├── flask/
│   └── Dockerfile-latest
├── fastapi/
│   └── Dockerfile-latest
└── express/
    └─ Dockerfile-latest
</pre>

## License

This project is licensed under the [MIT License](LICENSE).
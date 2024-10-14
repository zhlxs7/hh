在包含Dockerfile的目录中运行以下命令来构建镜像：
docker build -t my-python-github-cicd-app .
运行Docker容器并映射端口
使用以下命令来运行容器并将主机端口映射到容器端口：
docker run -d -p 8080:5000 --name my-running-python-github-cicd-app my-python-github-cicd-app
-d：在后台运行容器。
-p 8080:5000：将主机的端口8080映射到容器的端口5000。
--name my-running-python-github-cicd-app：指定容器的名称。
my-flask-github-cicd-app：要运行的镜像名称。
打开浏览器并访问 http://localhost:8080。你应该能看到 Hello, Docker! 的响应。
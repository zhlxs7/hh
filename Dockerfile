# 使用Python的官方基础镜像
FROM python:3.9-slim

# 更新pip
# RUN pip install --upgrade pip

# 安装依赖
# 确保先复制requirements.txt
COPY requirements.txt /app/requirements.txt  
RUN pip install --no-cache-dir -r /app/requirements.txt

# 将应用程序文件复制到容器内
COPY app.py /app/app.py

# 设置工作目录
WORKDIR /app

# 暴露应用程序运行的端口
EXPOSE 5000

# 设置容器启动时执行的命令
CMD ["python", "app.py"]
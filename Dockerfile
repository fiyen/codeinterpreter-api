# 使用基础镜像
FROM python:3.9

# 设置工作目录
WORKDIR /app

# 复制项目所有内容到工作目录
COPY . /app

# 进入项目的 frontend 文件夹
WORKDIR /app/frontend

# 返回工作目录
WORKDIR /app

# 安装后端依赖
RUN pip install -r requirements.txt

# 运行 Python API
CMD ["python", "app.py"]

# 使用基础镜像
FROM python:3.9

# 设置工作目录
WORKDIR /app

# 复制项目所有内容到工作目录
COPY . /app

# 安装 Python 依赖
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# # 进入项目的 frontend 文件夹
# WORKDIR /app/frontend

# 运行 Python API
CMD ["streamlit", "run", "app.py"]

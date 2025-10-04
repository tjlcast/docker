FROM ollama/ollama:latest

# 设置环境变量
ENV OLLAMA_HOST=0.0.0.0

# 安装curl
RUN apt-get update && apt-get install -y curl

# 预拉取模型（可选）
RUN sh -c 'ollama serve & \
    while ! ollama list >/dev/null 2>&1; do \
         echo "等待 Ollama 服务启动..."; \
         sleep 1; \
    done; \
    echo "Ollama 服务已启动，正在拉取模型..."; \
    ollama pull nomic-embed-text:latest'

EXPOSE 11434

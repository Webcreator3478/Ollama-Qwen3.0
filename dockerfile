FROM ollama/ollama:latest

# Set environment variables for Render
ENV OLLAMA_HOST=0.0.0.0:10000
ENV OLLAMA_ORIGINS="*"

# Pre-download the model using the FULL Hugging Face URL
RUN ollama serve & \
    sleep 5 && \
    ollama pull huggingface.co/RCDWealth/Dolphin3.0-Qwen2.5-1.5B-GGUF:Q5_K_M

ENTRYPOINT ["ollama", "serve"]

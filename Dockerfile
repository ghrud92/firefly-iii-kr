FROM fireflyiii/core:latest

# locales 패키지 설치 (이미 존재하지 않는 경우 대비)
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/*

# /etc/locale.gen 파일에 ko_KR.UTF-8 UTF-8 추가 후 locale-gen 실행
RUN echo "ko_KR.UTF-8 UTF-8" >> /etc/locale.gen && \
    locale-gen ko_KR.UTF-8

# 컨테이너 시작 시 /usr/local/bin/entrypoint.sh 실행
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

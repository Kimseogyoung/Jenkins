## 개인 프로젝트용 Jenkins 서버

- 실행
```
# 일반 경우
docker-compose up -d

# DockerFile 변경
docker-compose up -d --build
```

각 프로젝트에서 JenkinsFile 및 스크립트 생성 후 Git SCM 등록해서 Jenkins job을 등록합니다.

# Docker Compose
- 로컬 개발 환경 설정
- 여러 프로젝트에서 사용하기 위해, .env로 설정이나 경로 등 분리

## hosts 설정

```yaml
...

# Added by Docker Desktop
# To allow the same kube context to work on the host and the container:
127.0.0.1 kubernetes.docker.internal
127.0.0.1 domain.test
127.0.0.1 api.domain.test
# End of section
```

- macOS
  - sudo vi /private/etc/hosts

- Windows
  - C:\Windows\System32\Drivers\etc\hosts
  - 수정 시, 관리자 권한으로


## .env 설정
- 디렉토리
  - macOS
    - ~/Documents/GitHub/{directory}
  - Windows
    - C:\Users\{user_name}\Documents\GitHub\{directory}

- Language
  - node
  - php-fpm


## Command
- ``` docker-compose up ```
  - 모든 컨테이너를 생성, 실행
    - 백그라운드에서 실행 시 -d
    - 컨테이너 재생성 시 --force-recreate
  
- ``` docker-compose down ```
  - 모든 컨테이너를 정지, 삭제
    - up 커맨드와 정반대의 동작
  
- ``` docker system prune -a --volumes ```
  - 사용하지 않는 리소스 전부 삭제

- ``` docker-compose config ```
  - 적용된 설정 확인


## Study
### Docs
- [docker-tutorial](https://docs.microsoft.com/ko-kr/visualstudio/docker/tutorials/docker-tutorial)
- [docker-compose](https://docs.microsoft.com/ko-kr/visualstudio/docker/tutorials/use-docker-compose)
- [docker-guides](https://docs.docker.com/get-started/overview/)
- [toast](https://meetup.toast.com/posts/277)

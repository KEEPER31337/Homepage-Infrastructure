<div align="center">
  <img style="width:50%" src="https://keeper.or.kr/static/media/keeper_logo.95fc99d7fb9d9db8b162.png"/>
  <h1>Keeper Homepage Infrastructure</h1>
</div>

## **키퍼 홈페이지 인프라에 대한 모든 것**

##### 참고용으로만 봐주시고 악용은 하지 말아주세요!

### Environment

- OS
  - ubuntu 18.04
- Frontend
  - React 17
  - node 16
- Backend
  - Spring Boot 2.6.2
  - Gradle 7
  - MySQL 8
  - redis 6

### Directory

- [build](https://github.com/KEEPER31337/Homepage-Infrastructure/tree/main/build)

  - 프론트엔드, 백엔드 빌드 관련 인프라 코드
  - 백엔드 빌드는 docker 위에서 app(Spring Boot), db(MySQL), redis 3개의 컨테이너 환경에서 이루어집니다 - `docker-compose.yml` 파일 참고
  - 프론트엔드 빌드 스크립트는 `build_client.sh`, 백엔드 빌드 스크립트는 `build_server.sh` 입니다
  - **백엔드 빌드 시, DB 초기화를 위해 `build/docker/data/init.sql` 파일이 필요합니다**

- [chat](https://github.com/KEEPER31337/Homepage-Infrastructure/tree/main/chat)

  - 채팅 서버 관련 인프라 코드

- [cicd](https://github.com/KEEPER31337/Homepage-Infrastructure/tree/main/cicd)

  - GitHub Actions CICD 코드
  - cicd 백엔드 빌드 시 로컬에서 빌드 및 테스트가 진행되며 `application.properties`가 적용됩니다

- [deploy](https://github.com/KEEPER31337/Homepage-Infrastructure/tree/main/deploy)

  - 프론트엔드, 백엔드 서버 배포 스크립트 코드
  - 백엔드 배포 시 `application-deploy.properties`가 적용됩니다
  - `.env` 파일이 필요합니다(`env.example` 참고)
  - `wiki` docker 이미지 생성을 위해 `deploy/docker/data/wiki/images` 디렉터리가 필요합니다

- [monitoring](https://github.com/KEEPER31337/Homepage-Infrastructure/tree/main/monitoring)
  - 모니터링(Prometheus, Grafana) 관련 인프라 코드

## Structure

### Overview

<img src="https://user-images.githubusercontent.com/38307839/200564277-8eb71666-12e5-4a15-bbf7-b59935a2c9a5.svg" alt="overview">

### Backend CICD

<img src="https://user-images.githubusercontent.com/38307839/200564481-ce26db2b-f61b-4dea-bafe-32882cd0dd5a.svg" alt="cicd">

## Contact

[@redundant4u](https://github.com/redundant4u)

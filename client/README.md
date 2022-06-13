# KEEPER HOMEPAGE FRONT INFRA
## 설정
- node 환경 필요(16 기준)
- .env 내용 필요

### .env
- ```env.example``` 파일 내용을 수정
```
REACT_APP_MODE=
REACT_APP_API_URL=
REACT_APP_CHAT_URL=
GENERATE_SOURCEMAP=
```

## 실행
Build, Run, Scp 중 하나를 선택
```bash
./run.sh
```
- Build: React 빌드
- Run: React dev start
- Scp: ```scp```를 통해 React 빌드 파일 이동

# KEEPER HOMEPAGE SERVER INFRA

## WIKI

- 위키 관리자 비밀번호는 회장에게 문의해 주세요!

```bash
    docker-compose up
```

- `LocalSettings.php`

  - `LocalSettings.php` 수정 금지!
  - `edit_local_settings.sh`로만 수정할 것.

  - Warning! DO NOT edit `LocalSettings.php` if wiki container is running.
  - Just edit `LocalSettings.php` by `edit_local_settings.sh` script.
  - If you don't want to use docker volume on `LocalSettings.php`, you can edit it freely.

  - [Related discussion link](https://github.com/KEEPER31337/Homepage-Infra/pull/2#discussion_r902809768)

- DB network
  - `server` 디렉토리의 `db` container와 통신이 되어야 하므로, `external network` 추가.
  - 환경수정 시, wiki db가 존재하는 container와 `network`를 연결 시켜줄 것

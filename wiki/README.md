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

1. Настройка **gitlab-runner**

##### Поднять виртуальную машину *Ubuntu Server 22.04 LTS*.

##### Скачать и установить на виртуальную машину **gitlab-runner**.

##### Запустить **gitlab-runner** и зарегистрировать его для использования в текущем проекте.

2. Сборка

**== Задание ==**

#### Написать этап для **CI** по сборке приложений.

##### В файле _gitlab-ci.yml_ добавить этап запуска сборки через мейк файл.

##### Файлы, полученные после сборки (артефакты), сохранить в произвольную директорию со сроком хранения 30 дней.

3. Тест кодстайла

#### Написать этап для **CI**, который запускает скрипт кодстайла (*clang-format*).

##### Если кодстайл не прошел, то «зафейлить» пайплайн.

##### В пайплайне отобразить вывод утилиты *clang-format*.

4. Интеграционные тесты

#### Написать этап для **CI**, который запускает твои интеграционные тесты из того же проекта.

##### Запустить этот этап автоматически только при условии, если сборка и тест кодстайла прошли успешно.

##### Если тесты не прошли, то «зафейлить» пайплайн.

##### В пайплайне отобразить вывод, что интеграционные тесты успешно прошли / провалились.

5. Этап деплоя

##### Поднять вторую виртуальную машину *Ubuntu Server 22.04 LTS*.

#### Написать этап для **CD**, который «разворачивает» проект на другой виртуальной машине.

##### Запустить этот этап вручную при условии, что все предыдущие этапы прошли успешно.

##### Написать bash-скрипт, который при помощи **ssh** и **scp** копирует файлы, полученные после сборки (артефакты), в директорию */usr/local/bin* второй виртуальной машины.

##### В файле _gitlab-ci.yml_ добавить этап запуска написанного скрипта.

##### В случае ошибки «зафейлить» пайплайн.

6. Дополнительно. Уведомления

##### Настроить уведомления о успешном/неуспешном выполнении пайплайна через бота в *Telegram*.

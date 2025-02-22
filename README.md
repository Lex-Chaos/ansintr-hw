# Домашняя работа по занятию «Введение в Ansible» Боровик А.А.

## Подготовка к выполнению

1. Установите Ansible версии 2.10 или выше.
2. Создайте свой публичный репозиторий на GitHub с произвольным именем.
3. Скачайте [Playbook](./playbook/) из репозитория с домашним заданием и перенесите его в свой репозиторий.

## Основная часть

1. Попробуйте запустить playbook на окружении из `test.yml`, зафиксируйте значение, которое имеет факт `some_fact` для указанного хоста при выполнении playbook.

![some fact](https://github.com/Lex-Chaos/ansintr-hw/blob/master/img/Task_1.png)

2. Найдите файл с переменными (group_vars), в котором задаётся найденное в первом пункте значение, и поменяйте его на `all default fact`.

![default fact](https://github.com/Lex-Chaos/ansintr-hw/blob/master/img/Task_2.png)

3. Воспользуйтесь подготовленным (используется `docker`) или создайте собственное окружение для проведения дальнейших испытаний.

Сделал свои образы для Ubuntu и Centos7 с Python 3.

![ubuntu.dockerfile](https://github.com/Lex-Chaos/ansintr-hw/blob/master/ubuntu.dockerfile)

![centos.dockerfile](https://github.com/Lex-Chaos/ansintr-hw/blob/master/centos.dockerfile)


4. Проведите запуск playbook на окружении из `prod.yml`. Зафиксируйте полученные значения `some_fact` для каждого из `managed host`.

![managed host fact](https://github.com/Lex-Chaos/ansintr-hw/blob/master/img/Task_4.png)

5. Добавьте факты в `group_vars` каждой из групп хостов так, чтобы для `some_fact` получились значения: для `deb` — `deb default fact`, для `el` — `el default fact`.
6.  Повторите запуск playbook на окружении `prod.yml`. Убедитесь, что выдаются корректные значения для всех хостов.

![group vars](https://github.com/Lex-Chaos/ansintr-hw/blob/master/img/Task_6.png)

7. При помощи `ansible-vault` зашифруйте факты в `group_vars/deb` и `group_vars/el` с паролем `netology`.
8. Запустите playbook на окружении `prod.yml`. При запуске `ansible` должен запросить у вас пароль. Убедитесь в работоспособности.

![ansible vault](https://github.com/Lex-Chaos/ansintr-hw/blob/master/img/Task_8.png)

9. Посмотрите при помощи `ansible-doc` список плагинов для подключения. Выберите подходящий для работы на `control node`.

![plagins](https://github.com/Lex-Chaos/ansintr-hw/blob/master/img/Task_9.png)

10. В `prod.yml` добавьте новую группу хостов с именем  `local`, в ней разместите localhost с необходимым типом подключения.
11. Запустите playbook на окружении `prod.yml`. При запуске `ansible` должен запросить у вас пароль. Убедитесь, что факты `some_fact` для каждого из хостов определены из верных `group_vars`.

![passwd and local ](https://github.com/Lex-Chaos/ansintr-hw/blob/master/img/Task_11.png)

12. Заполните `README.md` ответами на вопросы. Сделайте `git push` в ветку `master`. В ответе отправьте ссылку на ваш открытый репозиторий с изменённым `playbook` и заполненным `README.md`.
13. Предоставьте скриншоты результатов запуска команд.

## Необязательная часть

1. При помощи `ansible-vault` расшифруйте все зашифрованные файлы с переменными.

![decrypt](https://github.com/Lex-Chaos/ansintr-hw/blob/master/img/Task_2.1.png)

2. Зашифруйте отдельное значение `PaSSw0rd` для переменной `some_fact` паролем `netology`. Добавьте полученное значение в `group_vars/all/exmp.yml`.

![encrypt string](https://github.com/Lex-Chaos/ansintr-hw/blob/master/img/Task_2.2.png)

3. Запустите `playbook`, убедитесь, что для нужных хостов применился новый `fact`.

![encrypt string fact](https://github.com/Lex-Chaos/ansintr-hw/blob/master/img/Task_2.3.png)

4. Добавьте новую группу хостов `fedora`, самостоятельно придумайте для неё переменную. В качестве образа можно использовать [этот вариант](https://hub.docker.com/r/pycontribs/fedora).

Сделал свой образ с Fedora и Python 3.

![fedora.dockerfile](https://github.com/Lex-Chaos/ansintr-hw/blob/master/fedora.dockerfile)

![fedora](https://github.com/Lex-Chaos/ansintr-hw/blob/master/img/Task_2.4.png)

5. Напишите скрипт на bash: автоматизируйте поднятие необходимых контейнеров, запуск ansible-playbook и остановку контейнеров.

![script action](https://github.com/Lex-Chaos/ansintr-hw/blob/master/img/Task_2.5.png)

6. Все изменения должны быть зафиксированы и отправлены в ваш личный репозиторий.

---

### Как оформить решение задания

Выполненное домашнее задание пришлите в виде ссылки на .md-файл в вашем репозитории.

---

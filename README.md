Создание демона, для вывода arp таблицы с определенного интерфейса в лог раз в минуту.
Демон создавался и тестировался на ubuntu 20.04
Файл демона: check_arp.service, необходимо создать в /etc/systemd/system/
Файл скрипта, который будет запускать демон: check_arp.sh, необходимо создать в /etc/ и дать права на выполнение: chmod +x /etc/check_arp.sh
Перезагружаем подсистему инициализации: systemctl daemon-reload
Добавляем сервис в автозагрузку: systemctl enable check_arp.service
Стартуем сервис: systemctl start check_arp.service
Проверяем статус: service check_arp status
Спустя минуту проверяем лог файл с результатом: cat /tmp/logarp.txt

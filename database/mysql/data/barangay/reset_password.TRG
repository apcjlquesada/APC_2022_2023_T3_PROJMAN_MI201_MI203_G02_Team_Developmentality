TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `set_expired_at` BEFORE INSERT ON `reset_password` FOR EACH ROW\n            SET NEW.expired_at = DATE_ADD(NEW.created_at, INTERVAL 30 MINUTE)'
sql_modes=1168113696
definers='root@localhost'
client_cs_names='utf8mb4'
connection_cl_names='utf8mb4_unicode_ci'
db_cl_names='utf8mb4_general_ci'
created=167746006142

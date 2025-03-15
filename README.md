# Airflow · ETL Pipeline Update according to new Requirements

### Project Overview

Modified DAG to meet new requirements:
- Added "payment status" field in Staging and "mart.f_sales" data mart to reflect the latest business logic without breaking existing dependencies (backward compatibility ensured)
- Implemented "mart.f_customer_retention" data mart for weekly customer retention reporting
- Configured incremental data load for retention report (every Monday for the previous full week)
- Ensured idempotency: data for the corresponding period is cleared before loading
- DAG tested and debugged

### Key Skills

Asynchronous API requests using Airflow XCom, writing functions and procedures in Python, data processing with Pandas, Psycopg2, Requests, and JSON, writing SQL scripts for data migration and mart calculations, connection credential masking using Airflow Connections, BaseHook, and PostgresHook, developing end-to-end ETL pipeline with PythonOperator, PostgresOperator, BranchPythonOperator, and DummyOperator, ensuring ETL process idempotency and backward compatibility, logging and testing DAG execution.

### Описание проекта

Модифицирован существующий DAG по расчету витрины продаж для учета новых бизнес-требований:
- Добавлено поле «статус платежа» в слой Staging и витрину "mart.f_sales" для отражения актуальной бизнес-логики без нарушения существующих зависимостей (поддержка backward compatibility)
- Реализована витрина "mart.f_customer_retention" по недельному удержанию клиентов согласно предоставленной схеме от бизнес-пользователей
- Настроена инкрементальная загрузка retention-отчета (каждый Пн за полную прошедшую неделю)
- Обеспечена идемпотентность: перед загрузкой выполняется очистка данных за соответствующий период
- DAG протестирован и отлажен

### Ключевые навыки

Асинхронные запросы по API с использованием Airflow XCom, написание функций и процедур на Python, использование библиотек Pandas, Psycopg2, Requests, JSON для обработки данных, написание SQL-скриптов для миграции данных и расчета витрин, маскирование реквизитов соединений с помощью Airflow Connections, BaseHook и PostgresHook, разработка ETL-пайплайна для сквозной бизнес-задачи с использованием операторов PythonOperator, PostgresOperator, BranchPythonOperator, DummyOpearator, обеспечение соответствия ETL-процесса требованиям идемпотентности и backward compatibility, логирование и тестирование запуска DAG.

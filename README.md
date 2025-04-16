## Upgrading Weekly Retention Reporting Pipeline using Airflow

### Task

Modify DAG to meet new requirements:
- Add "payment status" field in STG layer and "mart.f_sales" data mart to reflect the latest business logic without breaking existing dependencies (backward compatibility ensured)
- Implement "mart.f_customer_retention" data mart for weekly customer retention reporting
- Configure incremental data load for retention report (every Monday for the previous full week)
- Ensure idempotency: data for the corresponding period is cleared before loading

### Skills

Asynchronous API requests using Airflow XCom, writing functions and procedures in Python, data processing with Pandas, Psycopg2, Requests, and JSON, writing SQL scripts for data migration and mart calculations, connection credential masking using Airflow Connections, BaseHook, and PostgresHook, developing end-to-end ETL pipeline with PythonOperator, PostgresOperator, BranchPythonOperator, and DummyOperator, ensuring ETL process idempotency and backward compatibility, logging and testing DAG execution.

## Обновление пайплайна еженедельного отчёта по оттоку клиентов в Airflow

### Задача

Модифицировать существующий DAG по расчету витрины продаж для учета новых бизнес-требований:
- Добавить поле «статус платежа» в слой Staging и витрину "mart.f_sales" для отражения актуальной бизнес-логики без нарушения существующих зависимостей (поддержка backward compatibility)
- Реализовать витрину "mart.f_customer_retention" по недельному удержанию клиентов согласно предоставленной схеме от бизнес-пользователей
- Настроить инкрементальную загрузку retention-отчета (каждый Пн за полную прошедшую неделю)
- Обеспечить идемпотентность: перед загрузкой выполняется очистка данных за соответствующий период

### Навыки

Асинхронные запросы по API с использованием Airflow XCom, написание функций и процедур на Python, использование библиотек Pandas, Psycopg2, Requests, JSON для обработки данных, написание SQL-скриптов для миграции данных и расчета витрин, маскирование реквизитов соединений с помощью Airflow Connections, BaseHook и PostgresHook, разработка ETL-пайплайна для сквозной бизнес-задачи с использованием операторов PythonOperator, PostgresOperator, BranchPythonOperator, DummyOpearator, обеспечение соответствия ETL-процесса требованиям идемпотентности и backward compatibility, логирование и тестирование запуска DAG.

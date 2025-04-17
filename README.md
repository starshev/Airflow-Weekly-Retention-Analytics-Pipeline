## Weekly Retention Report Pipeline using Airflow

### Task  
Modify existing DAG for daily sales reporting to meet new requirements. Add "payment status" field in STG layer and existing data mart to reflect the latest business logic without breaking existing dependencies (backward compatibility ensured). Implement a new data mart for weekly customer retention reporting. Configure incremental data load for retention report (every Monday for the previous full week). Ensure idempotency by clearing data for the corresponding period before loading.

### Skills  
Asynchronous API requests using Airflow XCom, writing functions and procedures in Python, data processing with Pandas, Psycopg2, Requests, and JSON, writing SQL scripts for data migration and mart calculations, connection credential masking using Airflow Connections, BaseHook, and PostgresHook, developing end-to-end ETL pipeline with PythonOperator, PostgresOperator, BranchPythonOperator, and DummyOperator, ensuring ETL process idempotency and backward compatibility, logging and testing DAG execution.

## Еженедельный отчёт по удержанию клиентов с использованием Airflow

### Задача  
Модифицировать существующий DAG ежедневной отчётности по продажам в соответствии с новыми требованиями. Добавить поле "статус оплаты" в слой STG и существующую витрину данных с сохранением обратной совместимости (backward compatibility). Реализовать новую витрину данных для еженедельной отчётности по удержанию клиентов. Настроить инкрементальную загрузку данных (каждый понедельник за предыдущую полную неделю). Обеспечить идемпотентность — очищать данные за соответствующий период перед загрузкой.

### Навыки  
Асинхронные API-запросы с использованием Airflow XCom, написание функций и процедур на Python, обработка данных с помощью Pandas, Psycopg2, Requests и JSON, написание SQL-скриптов для миграции данных и расчётов витрины, маскировка учётных данных через Airflow Connections, BaseHook и PostgresHook, построение end-to-end ETL-пайплайна с использованием PythonOperator, PostgresOperator, BranchPythonOperator и DummyOperator, обеспечение идемпотентности и обратной совместимости процесса ETL, логирование и тестирование выполнения DAG.

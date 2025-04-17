## Weekly Retention Analytics Pipeline using Airflow

### Task  
Modify existing DAG for daily refill of sales data mart to meet updated requirements. Add "payment status" field in STG layer and existing data mart to reflect the latest business logic without breaking existing dependencies (backward compatibility ensured). Implement a new data mart for weekly customer retention analysis. Configure incremental data load into retention data mart (every Monday for the previous full week). Ensure idempotency by clearing data for the corresponding period before loading.

### Skills  
Asynchronous API requests using Airflow XCom, writing functions and procedures in Python, data processing with Pandas, Psycopg2, Requests, and JSON, writing SQL scripts for data migration and mart calculations, connection credential masking using Airflow Connections, BaseHook, and PostgresHook, developing end-to-end ETL pipeline with PythonOperator, PostgresOperator, BranchPythonOperator, and DummyOperator, ensuring ETL process idempotency and backward compatibility, logging and testing DAG execution.

## Еженедельная аналитика по удержанию клиентов с использованием Airflow

### Задача  
Модифицировать существующий DAG в соответствии с обновленными требованиями. Добавить поле "статус оплаты" в слой STG и существующую витрину с аналитикой продаж, сохраняя обратную совместимость (backward compatibility). Реализовать новую витрину данных для еженедельной аналитики по удержанию клиентов и настроить инкрементальную загрузку - каждый понедельник за предыдущую неделю. Обеспечить идемпотентность — очищать данные за соответствующий период перед загрузкой.

### Навыки  
Асинхронные API-запросы с использованием Airflow XCom и Requests, написание функций на 	Python, обработка данных с помощью Pandas, написание SQL-скриптов для миграции данных и расчётов витрины, маскировка учётных данных через Airflow Connections, BaseHook и PostgresHook, построение ETL-пайплайна с использованием PythonOperator, PostgresOperator и BranchPythonOperator, обеспечение идемпотентности и обратной совместимости процесса ETL, логирование и тестирование выполнения DAG.

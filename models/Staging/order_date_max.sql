select max(_etl_loaded_at) as max_date
from  {{ source('raw_files', 'orders') }}
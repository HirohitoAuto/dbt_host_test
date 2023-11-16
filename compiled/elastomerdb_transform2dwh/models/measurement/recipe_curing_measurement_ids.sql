

select compound_no, curing_no, test_category, test_id
from "elastomer_dwh"."elastomer"."stg_measurement__with_curing"

union all

select compound_no, curing_no, test_category, test_id
from "elastomer_dwh"."elastomer"."stg_measurement__without_curing"
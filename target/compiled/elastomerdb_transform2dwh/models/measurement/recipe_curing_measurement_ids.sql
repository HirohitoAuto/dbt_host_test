

select compound_no, curing_no, test_id, test_category
from "elastomer_dwh"."elastomer"."stg_measurement__with_curing"

union all

select compound_no, curing_no, test_id, test_category
from "elastomer_dwh"."elastomer"."stg_measurement__without_curing"
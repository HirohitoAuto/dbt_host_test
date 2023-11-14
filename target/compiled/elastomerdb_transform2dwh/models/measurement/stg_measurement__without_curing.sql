

select a.compound_no, null as curing_no, b.test_id, b.test_category
from "elastomer_dwh"."elastomer"."curing_conditions" as a
inner join "elastomer_dwh"."elastomer"."measurement_mdr" as b on a.compound_no = b.compound_no

union all

select a.compound_no, null as curing_no, b.test_id, b.test_category
from "elastomer_dwh"."elastomer"."curing_conditions" as a
inner join "elastomer_dwh"."elastomer"."measurement_mooney_scorch" as b on a.compound_no = b.compound_no

union all

select a.compound_no, null as curing_no, b.test_id, b.test_category
from "elastomer_dwh"."elastomer"."curing_conditions" as a
inner join
    "elastomer_dwh"."elastomer"."measurement_mooney_viscosity" as b on a.compound_no = b.compound_no
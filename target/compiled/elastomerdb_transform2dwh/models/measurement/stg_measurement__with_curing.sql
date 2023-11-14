

select a.compound_no, a.curing_no, b.test_id, b.test_category
from "elastomer_dwh"."elastomer"."curing_conditions" as a
inner join "elastomer_dwh"."elastomer"."measurement_compression_set" as b on a.curing_no = b.curing_no

union all

select a.compound_no, a.curing_no, b.test_id, b.test_category
from "elastomer_dwh"."elastomer"."curing_conditions" as a
inner join
    "elastomer_dwh"."elastomer"."measurement_gehman_torsion_test" as b on a.curing_no = b.curing_no

union all

select a.compound_no, a.curing_no, b.test_id, b.test_category
from "elastomer_dwh"."elastomer"."curing_conditions" as a
inner join "elastomer_dwh"."elastomer"."measurement_hardness_test" as b on a.curing_no = b.curing_no

union all

select a.compound_no, a.curing_no, b.test_id, b.test_category
from "elastomer_dwh"."elastomer"."curing_conditions" as a
inner join "elastomer_dwh"."elastomer"."measurement_tensile_test" as b on a.curing_no = b.curing_no

union all

select a.compound_no, a.curing_no, b.test_id, b.test_category
from "elastomer_dwh"."elastomer"."curing_conditions" as a
inner join "elastomer_dwh"."elastomer"."measurement_tr_test" as b on a.curing_no = b.curing_no

union all

select a.compound_no, a.curing_no, b.test_id, b.test_category
from "elastomer_dwh"."elastomer"."curing_conditions" as a
inner join "elastomer_dwh"."elastomer"."measurement_volume_change" as b on a.curing_no = b.curing_no
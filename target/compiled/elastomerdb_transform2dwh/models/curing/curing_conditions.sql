

select
    compound_no,
    curing_no,
    molding_temperature,
    molding_time,
    post_curing_time,
    post_curing_temperature
from "elastomer_dwh"."elastomer"."curinginformation"
where
    (compound_no is not null and compound_no != '')
    and (curing_no is not null and curing_no != '')
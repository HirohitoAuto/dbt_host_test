

select aging_medium_no, aging_medium_name
from "elastomer_dwh"."elastomer"."m_agingmedium"
where
    (aging_medium_no is not null and aging_medium_no != '')
    and (aging_medium_name is not null and aging_medium_name != '')
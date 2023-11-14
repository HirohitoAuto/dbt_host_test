

select
    a.compound_no,
    b.reagent_category_id,
    b.reagent_category,
    b.reagent_id,
    b.reagent,
    a.phr_recipe
from "elastomer_dwh"."elastomer"."recipelists_all" as a
inner join "elastomer_dwh"."elastomer"."reagents" as b on a.reagent_id = b.reagent_id
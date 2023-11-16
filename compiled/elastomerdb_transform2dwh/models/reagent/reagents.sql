

select
    reagent_category_id,
    reagent_category,
    reagent_sub_category_id
    reagent_sub_category,
    reagent_id,
    reagent
from "elastomer_dwh"."elastomer"."reagents_all"
where
    reagent_id
    in (select reagent_id from "elastomer_dwh"."elastomer"."is_visible_reagent" where is_visible = 1)
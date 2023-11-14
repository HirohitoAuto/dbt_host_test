

select
    compound_no,
    category as reagent_category,
    ingredients_no as reagent_id,
    ingredients_name as reagent,
    phr_recipe
from "elastomer_dwh"."elastomer"."recipelist"
where
    (compound_no is not null and compound_no != '')
    and (ingredients_no is not null and ingredients_no != '')
    and phr_recipe is not null
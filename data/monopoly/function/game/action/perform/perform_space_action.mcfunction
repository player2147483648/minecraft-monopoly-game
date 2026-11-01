### Determines the action that is performed depending on the space that you landed on.
## Non-property actions; these are easy to check for

# Community Chest/Chance
execute if data storage monopoly:spaces {current_space:{type:"community_chest"}} run return run function monopoly:game/action/community_chest
execute if data storage monopoly:spaces {current_space:{type:"chance"}} run return run function monopoly:game/action/chance
# Tax space
execute if data storage monopoly:spaces {current_space:{type:"tax"}} run return run function monopoly:game/action/tax
# Go to jail
execute if data storage monopoly:spaces {current_space:{type:"go_to_jail"}} run return run function monopoly:game/turn/go_to_jail
# Free Parking
execute if data storage monopoly:spaces {current_space:{type:"free_parking"}} run return run function monopoly:game/action/free_parking
# Unassorted spaces (Go and jail)
execute if data storage monopoly:spaces {current_space:{type:"none"}} run return run function monopoly:game/turn/start_turn

## Property actions

# Unowned Properties
execute if data storage monopoly:spaces {current_space:{type:"property",owner:-1}} run return run function monopoly:game/action/unowned_property
# Properties owned by the person who moved
execute if data storage monopoly:spaces {current_space:{type:"property"}} if predicate monopoly:owns_property run return run function monopoly:game/turn/start_turn
# Mortgaged Properties
execute if data storage monopoly:spaces {current_space:{type:"property",mortgaged:true}} run return run function monopoly:game/turn/start_turn
# Owned Utilities and Railroads
execute if data storage monopoly:spaces {current_space:{type:"property",railroad:true}} if predicate monopoly:owns_property run return run function monopoly:game/action/owned_railroad
execute if data storage monopoly:spaces {current_space:{type:"property",utility:true}} if predicate monopoly:owns_property run return run function monopoly:game/action/owned_utility
# If all else fails, then you landed on an owned street.
function monopoly:game/action/owned_street
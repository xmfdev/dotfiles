-- Surround
--
-- Manipulate surrounding characters.
--
-- ys<motion><character> for inserting.
-- cs<old><new> for modifying.
-- ds<character> for deleting.
return {
    "kylechui/nvim-surround",
    event = { "BufReadPre", "BufNewFile" },
    version = "*",
    config = true,
}

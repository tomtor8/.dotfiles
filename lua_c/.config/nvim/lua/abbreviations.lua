-- abbreviations, expand without trailing space
-- use ctrl + e after a snippet (remapped from c + ])
-- don't expand ctrl + immediately after a snippet
vim.cmd [[iab ast *]]
vim.cmd [[iab bks \]]
vim.cmd [[iab crl {]]
vim.cmd [[iab hh1 #]]
vim.cmd [[iab ibg ![bg left:33%]()<left>]]
vim.cmd [[iab llink [text](https://www.)<left>]]
vim.cmd [[iab itg <img src="pics/file" style="width: 300px">]]
vim.cmd [[iab str ~~~~<left><left>]] -- strikethrough
vim.cmd [[iab mmark <mark></mark><left><left><left><left><left><left><left>]]
vim.cmd [[iab sqt ']]
vim.cmd [[iab ppipe |]]

module ApplicationHelper
# Return a title on a per-page basis.
def titulo
titulo_base = "Mi sitio de basket"
if @titulo.nil?
titulo_base
else
"#{titulo_base} | #{@titulo}"
end
end
end

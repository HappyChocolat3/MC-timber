# Zapis zużycia siekiery. Format modyfikatora przedmiotu zmienił się między wersjami
# (klucz "function" → "type"), więc są dwa warianty w osobnych plikach – wczyta się ten, który pasuje.
$function timber:tool/set_damage_type {dmg:$(dmg)}
$function timber:tool/set_damage_function {dmg:$(dmg)}

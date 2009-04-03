function checkPresence(field) {
var hint = $F(field).length == 0 ? "Obrigatório!" : "OK";
if ($(field + '_hint')) {
$(field + '_hint').update(hint);
} else {
content = '<span class="validation" id="' + field + '_hint">' +
hint + '</span>';
new Insertion.After(field, content);
}
}

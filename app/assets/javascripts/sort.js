$(function() {
var $sortNewest = $("#sort-new-prototype").find("input");

$sortNewest.on("click", function() {
var $this = $(this);
$.ajax({
type: "POST",
data: {
id: $this.attr("id")
},
success: function() {
$this.val("Complete");
},
error: function(){
$this.val("Error");
}
})
});
});

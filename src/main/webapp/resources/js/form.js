//SKilss
function addRow(tableID) {

    var table = document.getElementById(tableID);

    var rowCount = table.rows.length;
    var row = table.insertRow(rowCount);

    var colCount = table.rows[0].cells.length;

    for (var i = 0; i < colCount; i++) {

        var newcell = row.insertCell(i);

        newcell.innerHTML = table.rows[0].cells[i].innerHTML;
        //alert(newcell.childNodes);
        switch (newcell.childNodes[0].type) {
            case "text":
                newcell.childNodes[0].value = "";
                break;
            case "checkbox":
                newcell.childNodes[0].checked = false;
                break;
            case "select-one":
                newcell.childNodes[0].selectedIndex = 0;
                break;
        }
    }
}

function deleteRow(tableID) {
    try {
        var table = document.getElementById(tableID);
        var rowCount = table.rows.length;

        for (var i = 0; i < rowCount; i++) {
            var row = table.rows[i];
            var chkbox = row.cells[0].childNodes[0];
            if (null != chkbox && true == chkbox.checked) {
                if (rowCount <= 1) {
                    alert("Cannot delete all the rows.");
                    break;
                }
                table.deleteRow(i);
                rowCount--;
                i--;
            }

        }
    } catch (e) {
        alert(e);
    }
}

//WORk history
$(document).ready(function () {
    //@naresh action dynamic childs
    var next = 0;
    $("#add-more").click(function (e) {
        e.preventDefault();
        var addto = "#field" + next;
        var addRemove = "#field" + (next);
        next = next + 1;
        var newIn = '<div id="field' + next + '" name="field' + next + '"><div class="form-group"><label class="col-md-4 control-label text-secondary" for="action_id">Organisation Name</label> <div class="col-md-5"><input id="action_id" name="action_id" type="text" placeholder="" class="form-control input-md" /> </div></div><div class="form-group">  <label class="col-md-4 control-label text-secondary" for="action_name">Tenure</label><div class="row"><div class="col-md-12"><label class="control-label text-secondary" for="action_id">Start Date</label><input id="action_name" name="action_name" type="month" placeholder="" class="form-control input-md"/></div><div class="col-md-12"><label class="control-label text-secondary" for="action_name">End Date</label><input id="action_name" name="action_name" type="month" placeholder="" class="form-control input-md"/></div><label class="col-md-4 control-label" for="action_name"></label><div class="row"></div></div><div class="inputfield"><div class="inputfield col-md-12"><input id="action_id" name="action_id" type="text" placeholder="Enter Title" class="form-control input-md" /></div></div><div class="inputfield"><label class="col-md-3 control-label" for="action_id">Work</label></div><div class="inputfield"><div class="inputfield col-md-12"><textarea placeholder="Project Name" class="form-control input-md">Enter Description</textarea></div></div><div class="inputfield"><div class="inputfield col-md-12"><textarea placeholder="Project Name" class="form-control input-md">Enter Contribution </textarea></div></div><div class="inputfield"><label class="col-md-4 control-label" for= "action_name" > Duration</label ><div class="row"><div class="col-md-6"><label class="control-label" for="action_id">From</label><input id="action_name" name="action_name" type="month" placeholder="" class="form-control input-md"/ ></div><div class="col-md-6"><label class="control-label" for="action_id">To</label><input id="action_name" name="action_name" type="month" placeholder="" class="form-control input-md" /></div></div></div><div class="inputfield"><div class="inputfield col-md-12"><textarea placeholder="Project Name" class="form-control input-md">Other Comment</textarea></div></div>';
        var newInput = $(newIn);
        var removeBtn = '<button id="remove' + (next - 1) + '" class="btn btn-danger remove-me" >Remove</button></div></div><div id="field">';

        var removeButton = $(removeBtn);
        $(addto).after(newInput);
        $(addRemove).after(removeButton);
        $("#field" + next).attr('data-source', $(addto).attr('data-source'));
        $("#count").val(next);

        $('.remove-me').click(function (e) {
            e.preventDefault();
            var fieldNum = this.id.charAt(this.id.length - 1);
            var fieldID = "#field" + fieldNum;
            $(this).remove();
            $(fieldID).remove();
        });
    });

});




// SOCIAL LINK
$(document).ready(function () {
    var next = 1;
    $(".add-more").click(function (e) {
        e.preventDefault();
        var addto = "#field" + next;
        var addRemove = "#field" + (next);
        next = next + 1;
        var newIn = '<input placeholder="E.g. Github,Linkedin" autocomplete="off" class="form-control col-md-10" id="field' + next + '" name="field' + next + '" type="text">';
        var newInput = $(newIn);
        var removeBtn = '<button id="remove' + (next - 1) + '" class="btn btn-danger remove-me" >-</button></div><div id="field">';
        var removeButton = $(removeBtn);
        $(addto).after(newInput);
        $(addRemove).after(removeButton);
        $("#field" + next).attr('data-source', $(addto).attr('data-source'));
        $("#count").val(next);

        $('.remove-me').click(function (e) {
            e.preventDefault();
            var fieldNum = this.id.charAt(this.id.length - 1);
            var fieldID = "#field" + fieldNum;
            $(this).remove();
            $(fieldID).remove();
        });
    });
});



    const form = document.getElementById("values-form");

    document.getElementById("btn-submit").onclick = function () {
        if (CheckBoxCount()) {
            form.submit();
        };
    };

    function CheckBoxCount() {
        var inputList = document.getElementsByTagName("input");
        var numChecked = 0;

        for (var i = 0; i < inputList.length; i++) {
            if (inputList[i].type == "checkbox" && inputList[i].checked) {
                numChecked = numChecked + 1;
            }
        }
        if (numChecked < 1) {
            alert("Please select at least 1 value"); return false;
        } else if (numChecked > 10) {
            alert("Please select no more than 10 values"); return false;
        }
        return true;

    }

function openTab(evt, tabName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("jdtabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("jdtablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(tabName).style.display = "block";
    evt.currentTarget.className += " active";
}
$("#jdAddButton").click(function(){
    var string = '<tr class="jdItem">';
    string = string + '<td><input type="number" class="form-control input-flat input-sm jdSize" onchange="getSizeValue()" placeholder="Kích cỡ sản phẩm" name="size"></td>';
    string = string + '<td><input type="number" class="form-control input-flat input-sm jdPrice" onchange="getPriceValue()" placeholder="Giá tiền" name="price"></td>';
    string = string + '<td><input type="number" class="form-control input-flat input-sm jdAmount" onchange="getAmountValue()" placeholder="Số lượng tồn" name="amount"></td>';
    string = string + '<td><p class="jdDeleteItem" onclick="deleteOne2ManyRow(this)"><i class="fa fa-trash-o" aria-hidden="true"></i></p></td>';
    string = string + '</tr>';
    $(string).insertBefore('.jdButtonRow');
});
function getSizeValue(){
    var sizeList = []
    $('.jdOne2Many .jdSize').each(function(){
        var size = $(this).val();
        sizeList.push(size);
    });

    $('.jdSizeList').val(JSON.stringify(sizeList));
    
}
function getPriceValue(){
    var priceList = []
    $('.jdOne2Many .jdPrice').each(function(){
        var price = $(this).val();
        priceList.push(price);
    });

    $('.jdPriceList').val(JSON.stringify(priceList));
    
}
function getAmountValue(){
    var amountList = []
    $('.jdOne2Many .jdAmount').each(function(){
        var amount = $(this).val();
        amountList.push(amount);
    });

    $('.jdAmountList').val(JSON.stringify(amountList));
    
}
function deleteOne2ManyRow(row)
{
    var index =  $(row).parents().parents().index();
    //document.getElementsByClassName("jdOne2Many").deleteRow(index);
    $(row).parent().parent().remove();
    getSizeValue();
    getPriceValue();
    getAmountValue();
}
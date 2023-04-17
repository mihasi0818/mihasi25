function formSwitch2() {
    const selectedRadioGroup = document.getElementsByName('maker2');
    
    if (selectedRadioGroup[0].checked) {
        // 好きな食べ物が選択されたら下記を実行します
        document.getElementById('tankList2').style.display = "";
        document.getElementById('fightList2').style.display = "none";
        document.getElementById('mageList2').style.display = "none";
        document.getElementById('asasinList2').style.display = "none";
        document.getElementById('hanterList2').style.display = "none";
        document.getElementById('supportList2').style.display = "none";
    } else if (selectedRadioGroup[1].checked) {
        // 好きな場所が選択されたら下記を実行します
        document.getElementById('tankList2').style.display = "none";
        document.getElementById('fightList2').style.display = "";
        document.getElementById('mageList2').style.display = "none";
        document.getElementById('asasinList2').style.display = "none";
        document.getElementById('hanterList2').style.display = "none";
        document.getElementById('supportList2').style.display = "none";
    } else if (selectedRadioGroup[2].checked) {
        // 好きな場所が選択されたら下記を実行します
        document.getElementById('tankList2').style.display = "none";
        document.getElementById('fightList2').style.display = "none";
        document.getElementById('mageList2').style.display = "";
        document.getElementById('asasinList2').style.display = "none";
        document.getElementById('hanterList2').style.display = "none";
        document.getElementById('supportList2').style.display = "none";
    } else if (selectedRadioGroup[3].checked) {
        // 好きな場所が選択されたら下記を実行します
        document.getElementById('tankList2').style.display = "none";
        document.getElementById('fightList2').style.display = "none";
        document.getElementById('mageList2').style.display = "none";
        document.getElementById('asasinList2').style.display = "";
        document.getElementById('hanterList2').style.display = "none";
        document.getElementById('supportList2').style.display = "none";
    } else if (selectedRadioGroup[4].checked) {
        // 好きな場所が選択されたら下記を実行します
        document.getElementById('tankList2').style.display = "none";
        document.getElementById('fightList2').style.display = "none";
        document.getElementById('mageList2').style.display = "none";
        document.getElementById('asasinList2').style.display = "none";
        document.getElementById('hanterList2').style.display = "";
        document.getElementById('supportList2').style.display = "none";  
    } else if (selectedRadioGroup[5].checked) {
        // 好きな場所が選択されたら下記を実行します
        document.getElementById('tankList2').style.display = "none";
        document.getElementById('fightList2').style.display = "none";
        document.getElementById('mageList2').style.display = "none";
        document.getElementById('asasinList2').style.display = "none";
        document.getElementById('hanterList2').style.display = "none";
        document.getElementById('supportList2').style.display = "";  
    
    
    } else {
        document.getElementById('tankList2').style.display = "none";
        document.getElementById('fightList2').style.display = "none";
        document.getElementById('mageList2').style.display = "none";
        document.getElementById('asasinList2').style.display = "none";
        document.getElementById('hanterList2').style.display = "none";
        document.getElementById('supportList2').style.display = "none";  
    }
}

window.addEventListener('load',formSwitch2);


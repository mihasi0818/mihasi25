function formSwitch() {
    const selectedRadioGroup = document.getElementsByName('maker');
    
    if (selectedRadioGroup[0].checked) {
        // 好きな食べ物が選択されたら下記を実行します
        document.getElementById('tankList').style.display = "";
        document.getElementById('fightList').style.display = "none";
        document.getElementById('mageList').style.display = "none";
        document.getElementById('asasinList').style.display = "none";
        document.getElementById('hanterList').style.display = "none";
        document.getElementById('supportList').style.display = "none";
    } else if (selectedRadioGroup[1].checked) {
        // 好きな場所が選択されたら下記を実行します
        document.getElementById('tankList').style.display = "none";
        document.getElementById('fightList').style.display = "";
        document.getElementById('mageList').style.display = "none";
        document.getElementById('asasinList').style.display = "none";
        document.getElementById('hanterList').style.display = "none";
        document.getElementById('supportList').style.display = "none";
    } else if (selectedRadioGroup[2].checked) {
        // 好きな場所が選択されたら下記を実行します
        document.getElementById('tankList').style.display = "none";
        document.getElementById('fightList').style.display = "none";
        document.getElementById('mageList').style.display = "";
        document.getElementById('asasinList').style.display = "none";
        document.getElementById('hanterList').style.display = "none";
        document.getElementById('supportList').style.display = "none";
    } else if (selectedRadioGroup[3].checked) {
        // 好きな場所が選択されたら下記を実行します
        document.getElementById('tankList').style.display = "none";
        document.getElementById('fightList').style.display = "none";
        document.getElementById('mageList').style.display = "none";
        document.getElementById('asasinList').style.display = "";
        document.getElementById('hanterList').style.display = "none";
        document.getElementById('supportList').style.display = "none";
    } else if (selectedRadioGroup[4].checked) {
        // 好きな場所が選択されたら下記を実行します
        document.getElementById('tankList').style.display = "none";
        document.getElementById('fightList').style.display = "none";
        document.getElementById('mageList').style.display = "none";
        document.getElementById('asasinList').style.display = "none";
        document.getElementById('hanterList').style.display = "";
        document.getElementById('supportList').style.display = "none";  
    } else if (selectedRadioGroup[5].checked) {
        // 好きな場所が選択されたら下記を実行します
        document.getElementById('tankList').style.display = "none";
        document.getElementById('fightList').style.display = "none";
        document.getElementById('mageList').style.display = "none";
        document.getElementById('asasinList').style.display = "none";
        document.getElementById('hanterList').style.display = "none";
        document.getElementById('supportList').style.display = "";  
    
    
    } else {
        document.getElementById('tankList').style.display = "none";
        document.getElementById('fightList').style.display = "none";
        document.getElementById('mageList').style.display = "none";
        document.getElementById('asasinList').style.display = "none";
        document.getElementById('hanterList').style.display = "none";
        document.getElementById('supportList').style.display = "none";  
    }
}

window.addEventListener('load',formSwitch);

let dark = document.getElementById("dark");
let light = document.getElementById("light");
let  myjsbg = document.getElementsByTagName("*");
let i=0;

dark.addEventListener('click',()=>{
    for(i=0;i<myjsbg.length;++i)
    {
        myjsbg[i].removeAttribute('style',"color:white !important;");
        myjsbg[i].setAttribute('style',"color:white !important;");
        myjsbg[i].removeAttribute('style',"background-color:white !important;");
        myjsbg[i].setAttribute('style',"background-color:#12141D !important;");
    }
})

light.addEventListener('click',()=>{

    for(i=0;i<myjsbg.length;++i)
    {
        myjsbg[i].removeAttribute('style',"color:blue !important;");
        myjsbg[i].setAttribute('style',"color:black !important;");
        myjsbg[i].removeAttribute('style',"background-color:#12141D !important;");
        myjsbg[i].setAttribute('style',"background-color:white !important;");
    }
})





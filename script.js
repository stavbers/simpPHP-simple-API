window.addEventListener("DOMContentLoaded", (event) => {

  function sendData(){
    let ob={name:"Town", country_code:"444", population:"555", img:"http://url.com", id:"2", };
  
    fetch('http://your-url',
      {
        method: 'POST',
        headers: { 'Content-type': 'application/x-www-form-urlencoded' },
        body: 'name='+ob.name +'&country_code='+ob.country_code +'&population='+ob.population +'&img='+ob.img +'&id='+ob.id  
      }
    )
  }

})
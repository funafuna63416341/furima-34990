window.addEventListener('load', () => {
    let priceInput = document.getElementById("item-price");
    priceInput.addEventListener("input", () => {
      let inputValue = priceInput.value;
      addTaxDom.innerHTML = Math.round(priceInput.value * 0.1 );
      profit.innerHTML =  Math.round(priceInput.value - Math.round(priceInput.value * 0.1 ))
      console.log(inputValue);
      
   })

    let addTaxDom = document.getElementById("add-tax-price");
    addTaxDom.addEventListener("input", () => {
      
    })
    addTaxDom.innerHTML = Math.round(priceInput.value * 0.1 );
    let profit = document.getElementById("profit");
    profit.addEventListener("input", () => {
      
    })
    profit.innerHTML =  Math.round(priceInput.value - Math.round(priceInput.value * 0.1 ))
    console.log(priceInput,addTaxDom,profit);
    console.log("イベント発火");
  
    
    
  });
   
 
window.addEventListener('load', () => {
    let priceInput = document.getElementById("item-price");
    priceInput.addEventListener("input", () => {
      let inputValue = priceInput.value;
      addTaxDom.innerHTML = Math.round(priceInput.value * 0.1 );
      profit.innerHTML =  Math.round(priceInput.value - Math.round(priceInput.value * 0.1 ))
      
   })

    let addTaxDom = document.getElementById("add-tax-price");
    addTaxDom.addEventListener("input", () => {
      
    })
    
    let profit = document.getElementById("profit");
    profit.addEventListener("input", () => {
      
    }) 
  });
   
 
/**
 * 
 */
const form = document.getElementById("cancel-form");
const orderCheckboxes = document.getElementsByClassName("order-id");
const productIds = document.getElementsByClassName("product-id");

/* console.log(orderCheckboxes[0].dataset["orderid"]) */

let text = "";

const cancel = () => {
   Array.from(orderCheckboxes).forEach((orderCheckbox, index) => {
      if(orderCheckbox.checked){
         const orderId = orderCheckbox.dataset["orderid"];
         const productId = productIds[index].dataset["productid"]
         
         text += "<input type='hidden' name='orderId' value='" + orderId + "' />"
         text += "<input type='hidden' name='productId' value='" + productId + "' />"
         
      }
   })
   
   form.innerHTML = text;
   form.submit();
}
import React, { useState, useEffect } from "react";
import CartItem from "./CartItem";
import Loading from "./Loading";
import { motion, AnimatePresence } from "framer-motion";
import {
  GoogleMap,
  useJsApiLoader,
  Marker,
  InfoWindow,
} from "@react-google-maps/api";
import Map from "./Map";
const Cart = ({ changeCount, items, setItems }) => {
  const [user, setUser] = useState("");
  const [val, setVal] = useState("");
  const [loading, setLoading] = useState(false);
  const [totPrice, setTotPrice] = useState(0);
  const [showMap, setShowMap] = useState(false);
  const [address, setAddress] = useState("");
  const [discountApplied, setDiscountApplied] = useState(false);
  const [error, setError] = useState(false);
  const checkDiscount = () => {
    if (val === "Final-week-20") {
      setDiscountApplied(true);
      setError(false);
      setTotPrice(totPrice - totPrice / 5);
    } else {
      setError(true);
    }
  };
  const adjustAddress = (ad) => {
    setAddress(ad);
    console.log(address);
  };
  const hideMap = () => {
    setShowMap(false);
  };

  const deleteItem = (key) => {
    fetch(`/carts/${key}`, {
      method: "DELETE",
    });
    fetch(`/carts/${user}`)
      .then((resp) => resp.json())
      .then((d) => {
        setItems(d);
        calcTot(d);
      });
  };
  const calcTot = (arr) => {
    let tot = 0;
    if (arr.length < 0) {
      return 0;
    } else {
      arr.forEach((item) => {
        tot += parseInt(item.product.price * item.quantity);
      });
    }
    setTotPrice(tot);
    return tot;
  };
  const handleUpdate = (value, ids) => {
    fetch(`/carts/${user}`, {
      method: "PATCH",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ quantity: value, product_id: ids }),
    })
      .then((resp) => resp.json())
      .then((d) => {
        setItems(d);
        calcTot(d);
      });
  };
  useEffect(() => {
    setLoading(true);
    fetch(`/me`)
      .then((resp) => resp.json())
      .then((d) => {
        setUser(d.id);
        fetch(`/carts/${d.id}`)
          .then((resp) => resp.json())
          .then((d) => {
            setItems(d);
            calcTot(d);
            setLoading(false);
          });
      });
  }, []);

  const fetchCheckOut = () => {
    /* global Stripe */
    const key = process.env.REACT_APP_API_STRIPE;
    var stripe = Stripe(key);
    fetch("/checkout", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ items: items, discountApplied: discountApplied }),
    })
      .then(function (response) {
        console.log(response);
        return response.json();
      })
      .then(function (session) {
        console.log(session);
        return stripe.redirectToCheckout({ sessionId: session.id });
      })
      .then(function (result) {
        if (result.error) {
          alert(result.error.message);
        }
      });
  };

  return (
    <>
      <div className="cart-main">
        {loading && <Loading />}
        {!loading && (
          <>
            <AnimatePresence>
              <ul className="cart-details">
                {items.map((item, index) => {
                  return (
                    <CartItem
                      key={item.id}
                      item={item}
                      handleUpdate={handleUpdate}
                      user={user}
                      deleteItem={deleteItem}
                      changeCount={changeCount}
                      index={index}
                    />
                  );
                })}
              </ul>
            </AnimatePresence>
            <ul className="cart-summary">
              <h3
                style={{
                  textAlign: "center",
                  color: "grey",
                  paddingBottom: "2rem",
                }}
              >
                Check Out Summary
              </h3>
              <h4>
                Deliver To:{" "}
                {address ? (
                  <h4>
                    {address}{" "}
                    <a href="#" onClick={() => setShowMap(true)}>
                      Click to change address
                    </a>
                  </h4>
                ) : (
                  <a
                    href="#"
                    onClick={() => {
                      setShowMap(true);
                    }}
                  >
                    Click to view on map
                  </a>
                )}
              </h4>
              <h5>Subtotal ${totPrice}</h5>
              <h5>
                Discount Code{" "}
                <input
                  style={{
                    height: "1.5rem",
                    width: "10rem",
                    marginLeft: "1.5rem",
                  }}
                  value={val}
                  onChange={(e) => {
                    setVal(e.target.value);
                  }}
                ></input>{" "}
                <button
                  onClick={checkDiscount}
                  className="btn"
                  style={{
                    width: "3rem",
                    borderRadius: "50%",
                    height: "3rem",
                    letterSpacing: "1px",
                    fontSize: "12px",
                    backgroundColor: "black",
                    marginLeft: "3rem",
                    fontWeight: "bold",
                  }}
                >
                  Apply
                </button>
              </h5>
              {!error && discountApplied && <h6>Discount Applied</h6>}
              {error && <h6>Wrong code please try again</h6>}
              <h6
                style={{
                  color: "red",
                  paddingLeft: "9rem",
                  fontWeight: "bold",
                  fontSize: "15px",
                }}
              >
                TOTAL ${totPrice}
              </h6>
              <button
                onClick={fetchCheckOut}
                className="btn"
                style={{ marginLeft: "8rem" }}
              >
                Pay
              </button>
            </ul>
            {showMap && (
              <aside className="modal-big">
                <Map
                  adjustAddress={adjustAddress}
                  hideMap={hideMap}
                  address={address}
                />
              </aside>
            )}
          </>
        )}
      </div>
    </>
  );
};

export default Cart;

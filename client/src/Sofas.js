import React, { useState, useEffect } from "react";
import { Link, useParams } from "react-router-dom";
import { motion } from "framer-motion";
import { IoIosArrowDown } from "react-icons/io";
import Loading from "./Loading";
import SofaItem from "./SofaItem";
const Sofas = () => {
  const { cat } = useParams();
  const [sofas, setAllSofas] = useState([]);
  const [loading, setLoading] = useState(false);
  const fetchUrl = () => {
    console.log(cat);
    setLoading(true);
    fetch(`/product/${cat}`)
      .then((resp) => resp.json())
      .then((d) => {
        console.log(d);
        setAllSofas(d);
        setLoading(false);
      });
  };
  const handleHover = (key) => {};
  useEffect(() => {
    fetchUrl();
  }, [cat]);

  return (
    <>
      {loading && <Loading />}
      <section className="intro-top"></section>
      <section className="sofa-intro"></section>
      <section className="filter">
        <p
          style={{
            display: "flex",
            justifyContent: "flex-end",
            paddingRight: "6rem",
            paddingTop: "1rem",
          }}
        >
          Sort by{" "}
          <IoIosArrowDown
            style={{ paddingLeft: "1rem", paddingTop: "0.2rem" }}
          />
        </p>
      </section>
      {!loading && (
        <ul
          style={{
            display: "flex",
            width: "100%",
            flexDirection: "row",
            flexWrap: "wrap",
            justifyContent: "center",
          }}
        >
          {sofas.map((sofa) => {
            return <SofaItem key={sofa.id} sofa={sofa} />;
          })}
        </ul>
      )}
    </>
  );
};

export default Sofas;

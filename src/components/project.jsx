import React from "react";
import { paddingGlobal } from "../const";

import "react-responsive-carousel/lib/styles/carousel.min.css";
import FotoWaroenkBude from "../images/waroenkbude.png";
import FotoSikimr from "../images/sikimr.png";
import FotoManualToyota from "../images/bukumanual.png";

const ProjectListWebsite = [
  {
    nama: "Waroenk Bude",
    location: FotoWaroenkBude,
    keterangan:
      "Waroenk Bude adalah merupakan aplikasi e-commerce berbasis website yang memberikan pelayanan kepada pengguna dalam memesan makanan pada hari-hari tertentu.",
    tools: ["Laravel", "Bootstrap", "HTML", "CSS", "Javascript"],
  },
  {
    nama: "Si-Kimr",
    location: FotoSikimr,
    keterangan:
      "SI-KIMR adalah suatu aplikasi berbasis web yang digunakan untuk memenuhi kebutuhan kepatuhan intern dalam memitigasi suatu resiko atau pun mengendalikan suatu masalah",
    tools: ["Laravel", "Bootstrap", "HTML", "CSS", "Javascript"],
  },
];

const ProjectListAndroid = [
  {
    nama: "Manual Toyota",
    location: FotoManualToyota,
    keterangan:
      "Buku Manual Toyota Merupakan suatu aplikasi yang berbasis android/ios yang berfungsi memberikan petunjuk kepada pemilik mobil dalam pengoperasian mobil",
    tools: ["Bootstrap", "HTML", "CSS", "Javascript"],
  },
];

function CardsWebsite({ index }) {
  return (
    <a href="/" className="block">
      <img
        alt="Art"
        src={index.location}
        className="h-64 w-full object-cover sm:h-80 lg:h-96"
      />

      <h3 className="mt-4 text-xl font-medium sm:text-2xl text-white">
        {index.nama}
      </h3>

      <p className="mt-4 text-sm sm:text-base text-gray-200">
        {index.keterangan}
      </p>
      <p className="mt-8 font-bold text-gray-200">
        Tools yang digunakan <br /> {index.tools.join(", ")}
      </p>
    </a>
  );
}

function CardsMobile({ index }) {
  return (
    <a href="/" className="block">
      <img
        alt="Art"
        src={index.location}
        className="h-auto w-2/3 object-fill"
      />

      <h3 className="mt-4 text-xl font-medium sm:text-2xl text-white">
        {index.nama}
      </h3>

      <p className="mt-4 text-sm sm:text-base text-gray-200">
        {index.keterangan}
      </p>
      <p className="mt-8 font-bold text-gray-200">
        Tools yang digunakan <br /> {index.tools.join(", ")}
      </p>
    </a>
  );
}

export default function Project() {
  return (
    <div>
      <div className={`w-full h-auto pb-48 bg-gray-900 ${paddingGlobal}`}>
        <div className="container-fluid text-center">
          <h2 className="text-white font-bold text-3xl">Project Website</h2>
        </div>
        <div className="grid grid-cols-3 py-16 gap-5">
          {ProjectListWebsite.map((project, index) => (
            <CardsWebsite key={index} index={project} />
          ))}
        </div>
        <div className="container-fluid text-center">
          <h2 className="text-white font-bold text-3xl">Project Android</h2>
        </div>
        <div className="grid grid-cols-3 py-16 gap-5">
          {ProjectListAndroid.map((project, index) => (
            <CardsMobile key={index} index={project} />
          ))}
        </div>
      </div>
    </div>
  );
}

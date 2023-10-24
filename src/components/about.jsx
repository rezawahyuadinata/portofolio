/* eslint-disable jsx-a11y/heading-has-content */
import { paddingGlobal } from "../const";
import FotoProfile from "../images/fotoprofil.png";

export default function About() {
  return (
    <div>
      <div className={`w-full h-screen bg-gray-900 ${paddingGlobal}`}>
        <div className="container-fluid text-center">
          <h2 className="text-white font-bold text-3xl">About</h2>
        </div>
        <div className="grid mt-12 py-12 grid-cols-1 lg:grid-cols-2">
          <div className="flex py-2 items-center justify-center lg:justify-start">
            <div className="max-w-2xl text-center lg:text-left">
              <h2 className="text-3xl font-bold mb-10 text-white ">
                Halo, Nama saya Reza Wahyu Adinata
              </h2>
              <p className="text-xl text-gray-200 text-justify tracking-wider md:mt-4 md:block">
                Saya lulus dengan gelar S1 Ilmu Komputer dari Universitas
                Gunadarma jurusan Sistem Informasi dengan IPK 3.10. Saya
                memiliki ketertarikan dan minat yang kuat dalam bidang IT,
                terutama sebagai Software Engineer. <br />
                <br />
                Dengan pengalaman dalam proyek dan kemampuan pemecahan masalah
                yang sangat baik, saya telah mempelajari berbagai teknologi dan
                bahasa pemrograman. Saya juga memiliki kemampuan dalam desain
                web dan pengembangan aplikasi. <br /> <br />
                Saya percaya diri dapat memberikan kontribusi yang berharga
                dalam tim kerja dan memiliki manajemen waktu yang baik serta
                disiplin.
              </p>
            </div>
          </div>
          <div className="flex items-center justify-center">
            <img
              alt="Reza"
              src={FotoProfile}
              className="w-2/3 object-cover h-auto mx-auto lg:mx-0"
            />
          </div>
        </div>
      </div>
    </div>
  );
}

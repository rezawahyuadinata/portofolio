import React from "react";
import { paddingGlobal } from "../const";

export default function Header() {
  return (
    <section className={`relative bg-gray-900 ${paddingGlobal}`}>
      <div className=" flex h-screen items-center">
        <div className="max-w-xl text-left">
          <h1 className="text-5xl mb-4 font-extrabold text-white">
            Reza Wahyu Adinata
          </h1>
          <h3 className="text-3xl mb-12 font-bold text-white">
            Software Developer
          </h3>
          <p className="mt-4 max-w-xl text-2xl font-semibold text-gray-300 leading-loose">
            Saya seorang software developer yang berfokus dalam pengembangan
            aplikasi website dan android.
          </p>
          <div className="mt-12 flex gap-4">
            <a
              href="/"
              className="rounded-lg px-6 py-3 bg-gray-800 hover:bg-cyan-500 transition duration-300 ease-in-out"
            >
              <span className="capitalize text-lg text-white">
                Download My CV
              </span>
            </a>
          </div>
        </div>
      </div>
    </section>
  );
}

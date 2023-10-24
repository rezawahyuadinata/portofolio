import React from "react";
import IconFlutter from "../images/flutter.png";
import IconDocker from "../images/docker.png";
import IconLinux from "../images/linux.png";
import IconLaravel from "../images/laravel.png";
import IconJavascript from "../images/javascript.png";
import IconSql from "../images/sql.png";
import IconGolang from "../images/golang.png";
import IconGithub from "../images/github.png";
import IconReact from "../images/react.png";
import IconKatalon from "../images/katalon.png";
import IconSDLC from "../images/sdlc.jpg";
import IconFigma from "../images/figma.png";

const Tingkatan = ["Beginner", "Intermediate", "Expert"];

const SkillNeeded = [
  { icon: IconFlutter, name: "Flutter", tingkat: `${Tingkatan[1]}` },
  { icon: IconDocker, name: "Docker", tingkat: `${Tingkatan[0]}` },
  {
    icon: IconLinux,
    name: "Linux System Operation",
    tingkat: `${Tingkatan[2]}`,
  },
  { icon: IconLaravel, name: "Laravel", tingkat: `${Tingkatan[2]}` },
  { icon: IconJavascript, name: "Javascript", tingkat: `${Tingkatan[1]}` },
  { icon: IconSql, name: "MySql", tingkat: `${Tingkatan[1]}` },
  { icon: IconGolang, name: "Golang", tingkat: `${Tingkatan[1]}` },
  { icon: IconGithub, name: "Github", tingkat: `${Tingkatan[2]}` },
  { icon: IconReact, name: "ReactJS", tingkat: `${Tingkatan[0]}` },
  { icon: IconKatalon, name: "Katalon", tingkat: `${Tingkatan[0]}` },
  { icon: IconSDLC, name: "SDLC", tingkat: `${Tingkatan[2]}` },
  { icon: IconFigma, name: "Figma", tingkat: `${Tingkatan[0]}` },
];

let MainSkill = [
  { jumlah: "3", name: "Projects" },
  { jumlah: `${SkillNeeded.length}`, name: "Skills" },
];

function IndikatorBar({ tingkat }) {
  if (tingkat === "Beginner") {
    return (
      <div>
        <span id="ProgressLabel" className="sr-only">
          Loading
        </span>

        <span
          role="progressbar"
          aria-labelledby="ProgressLabel"
          aria-valuenow="25"
          className="block rounded-full bg-gray-200"
        >
          <span
            className="block h-3 rounded-full bg-indigo-600"
            style={{ width: "25%" }}
          ></span>
        </span>
      </div>
    );
  } else if (tingkat === "Intermediate") {
    return (
      <div>
        <span id="ProgressLabel" className="sr-only">
          Loading
        </span>

        <span
          role="progressbar"
          aria-labelledby="ProgressLabel"
          aria-valuenow="50"
          className="block rounded-full bg-gray-200"
        >
          <span
            className="block h-3 rounded-full bg-indigo-600"
            style={{ width: "50%" }}
          ></span>
        </span>
      </div>
    );
  } else {
    return (
      <div>
        <span id="ProgressLabel" className="sr-only">
          Loading
        </span>
        <span
          role="progressbar"
          aria-labelledby="ProgressLabel"
          aria-valuenow="75"
          className="block rounded-full bg-gray-200"
        >
          <span
            className="block h-3 rounded-full bg-indigo-600"
            style={{ width: "75%" }}
          ></span>
        </span>
      </div>
    );
  }
}

function CardSkills({ index }) {
  return (
    <div>
      <a
        className="block rounded-xl border border-gray-800 p-8 shadow-xl transition hover:border-teal-500/10 hover:shadow-teal-500/10"
        href="/services/digital-campaigns"
      >
        <img className="h-10 w-auto" src={index.icon} alt="" />

        <h2 className="mt-4 text-xl font-bold text-white">
          {index.name} - {index.tingkat}
        </h2>

        <p className="mt-4 text-sm text-gray-300">
          <IndikatorBar tingkat={index.tingkat} />
        </p>
      </a>
    </div>
  );
}

export default function Skill() {
  return (
    <div>
      <div className="w-full h-auto  bg-gray-900">
        <div className="container-fluid text-center">
          <h2 className="text-white font-bold text-3xl">Skills</h2>
        </div>
        <div className="bg-gray-900">
          <div className="mx-auto max-w-screen-xl px-4 py-16 ">
            <div className="mx-auto max-w-3xl text-center">
              <p className="mt-4 text-gray-200 sm:text-xl">
                saya memiliki skill yang umumnya saya gunakan dalam linkup
                pengembangan aplikasi
              </p>
            </div>
            {/* MainSkill */}
            <div className="mt-8 sm:mt-12">
              <dl className="grid grid-cols-1 gap-4 sm:grid-cols-2">
                {MainSkill.map((index) => (
                  <div
                    className="flex flex-col rounded-lg border border-gray-100 px-4 py-8 text-center"
                    key={index.id}
                  >
                    <dt className="order-last text-lg font-medium text-gray-200">
                      {index.name}
                    </dt>
                    <dd className="text-4xl font-extrabold text-blue-600 md:text-5xl">
                      {index.jumlah}
                    </dd>
                  </div>
                ))}
              </dl>
            </div>
            {/* SecondarySkill */}
            <div className="bg-gray-900">
              <div className="mx-auto max-w-screen-xl px-4 py-8 sm:py-12 sm:px-6 lg:py-16 lg:px-8">
                <div className="mt-8 grid grid-cols-1 gap-8 md:grid-cols-2 lg:grid-cols-3">
                  {SkillNeeded.map((project, index) => (
                    <CardSkills key={index} index={project} />
                  ))}
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}

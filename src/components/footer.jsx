import { ReactComponent as LogoTwitter } from "../images/twitter.svg";
import { ReactComponent as LogoInstagram } from "../images/instagram.svg";
import { ReactComponent as LogoLinkedin } from "../images/linkedin.svg";
import { ReactComponent as LogoGithub } from "../images/github.svg";

const daftarAplikasi = [
  { name: "Twitter", icon: <LogoTwitter className="w-12 h-auto" />, href: "/" },
  {
    name: "Instagram",
    icon: <LogoInstagram className="w-12 h-auto" />,
    href: "/",
  },
  {
    name: "Linkedin",
    icon: <LogoLinkedin className="w-12 h-auto" />,
    href: "https://www.linkedin.com/in/reza-wahyu-adinata/",
  },
  { name: "Github", icon: <LogoGithub className="w-12 h-auto" />, href: "/" },
];

export default function Footer() {
  return (
    <footer className="bg-gray-900">
      <div className="mx-auto max-w-screen-xl px-4 pb-8 pt-8 sm:px-6 lg:px-8">
        <div className="w-full px-24 sm:flex sm:items-center sm:justify-between">
          <div className="flex flex-wrap justify-center gap-4 text-xs lg:justify-end">
            <a href="/" className="text-white transition hover:opacity-75">
              <span className="text-xl text-white tracking-[.5rem]">
                Reza Wahyu Adinata
              </span>
            </a>
          </div>
          <ul className="mt-8 flex justify-center gap-6 sm:mt-0 lg:justify-end">
            {daftarAplikasi.map((item) => (
              <li key={item.name}>
                <a href={item.href} target="_blank" rel="noreferrer">
                  <span className="sr-only">{item.name}</span>
                  <div className="w-full">{item.icon}</div>
                </a>
              </li>
            ))}
          </ul>
        </div>
      </div>
    </footer>
  );
}

import { paddingGlobal } from "../const";



export default function Contact() {
  return (
    <div>
      <div className={`w-full h-auto bg-gray-900 ${paddingGlobal}`}>
        <div className="container-fluid text-center">
          <h2 className="text-white font-bold text-3xl">Contact</h2>
        </div>
        <div className="grid grid-cols-12">
          <div className="flex items-center justify-center px-8 py-8 sm:px-12 lg:col-span-7 lg:px-16 lg:py-12 xl:col-span-6">
            <div className="max-w-xl lg:max-w-3xl">
              <p className="mt-4 leading-relaxed text-gray-300">
                Jika ada Pesan yang ingin anda sampaikan kepada saya silahkan
                isi form dibawah ini.
              </p>

              <form action="#" className="mt-8 grid grid-cols-6 gap-6">
                <div className="col-span-6 sm:col-span-3">
                  <label
                    htmlFor="FirstName"
                    className="block text-sm font-medium text-gray-300"
                  >
                    First Name
                  </label>

                  <input
                    type="text"
                    id="FirstName"
                    name="first_name"
                    placeholder="Enter a first name..."
                    className="mt-1 w-full p-2 rounded-md border-gray-200 bg-white text-sm text-gray-900 shadow-sm"
                  />
                </div>

                <div className="col-span-6 sm:col-span-3">
                  <label
                    htmlFor="LastName"
                    className="block text-sm font-medium text-gray-300"
                  >
                    Last Name
                  </label>

                  <input
                    type="text"
                    id="LastName"
                    name="last_name"
                    placeholder="Enter a last name..."
                    className="mt-1 w-full p-2 rounded-md border-gray-200 bg-white text-sm text-gray-900 shadow-sm"
                  />
                </div>

                <div className="col-span-6">
                  <label
                    htmlFor="Email"
                    className="block text-sm font-medium text-gray-300"
                  >
                    Email
                  </label>

                  <input
                    type="email"
                    id="Email"
                    name="email"
                    placeholder="Enter a email..."
                    className="mt-1 w-full p-2 rounded-md border-gray-200 bg-white text-sm text-gray-900 shadow-sm"
                  />
                </div>

                <div className="col-span-6">
                  <label
                    htmlFor="OrderNotes"
                    className="block text-sm font-medium text-gray-300"
                  >
                    Messages
                  </label>

                  <textarea
                    id="OrderNotes"
                    className="mt-2 w-full p-2 rounded-lg border-gray-200 align-top shadow-sm sm:text-sm"
                    rows="4"
                    placeholder="Enter any additional order notes..."
                  ></textarea>
                </div>

                <div className="col-span-6 sm:flex sm:items-center sm:gap-4">
                  <button className="inline-block shrink-0 rounded-md border border-blue-600 bg-blue-600 px-12 py-3 text-sm font-medium text-white transition hover:bg-transparent hover:text-blue-600 focus:outline-none focus:ring active:text-blue-500">
                    Send a message
                  </button>
                </div>
              </form>
            </div>
          </div>
          <div className="flex items-center justify-center px-8 py-8 sm:px-12 lg:col-span-7 lg:px-16 lg:py-12 xl:col-span-6">
            <div className="max-w-xl lg:max-w-3xl">
              <p className="mt-4 leading-relaxed text-xl text-gray-300">
                Jika anda tertarik kepada karya saya Bisa menghubungi email ini
                atau anda bisa mengunjungi email dibawah ini
              </p>
              <p className="mt-4 leading-relaxed text-xl text-gray-300">
                Email : adinatarezawahyu@gmail.com
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}

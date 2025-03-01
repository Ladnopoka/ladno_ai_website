module.exports = {
    content: [
      "./app/assets/tailwind/application.tailwind.css", // ensure this file is included
      "./app/**/*.html.erb",
      "./app/helpers/**/*.rb",
      "./app/assets/**/*.{js,css}"
    ],
    safelist: [
      "bg-[#000000]",  // for bg-black used as arbitrary value
      "text-[#ffffff]", // for text-white used as arbitrary value
      "font-sans",      // ensure font-sans is kept
    ],
    theme: {
      extend: {
        colors: {
          black: "#000000",  // explicitly extend the default if needed
        },
      },
    },
    plugins: [],
  };
  
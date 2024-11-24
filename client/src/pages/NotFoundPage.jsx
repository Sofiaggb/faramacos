const NotFoundPage = () => {
    return (
      <div className="flex flex-col items-center justify-center h-screen bg-gray-100 text-center">
        <h1 className="text-6xl font-bold text-gray-800 mb-4">404</h1>
        <p className="text-xl text-gray-600 mb-6">Página no encontrada</p>
        <a
          href="/"
          className="group relative inline-block text-sm font-medium text-emerald-900 
          focus:outline-none focus:ring active:text-emerald-500"
        >
           <span
            className="absolute inset-0 translate-x-0.5 translate-y-0.5 bg-emerald-600 transition-transform
             group-hover:translate-x-0 group-hover:translate-y-0"
          ></span>

          <span className="relative block border border-current bg-indigo-200 px-8 py-3"> Volver al Inicio </span>
          
        </a>
      </div>
    );
  };
  
  export default NotFoundPage;
  

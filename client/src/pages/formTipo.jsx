import { useState } from 'react';
import Swal from 'sweetalert2';

const FormTipo = ({
  descripcion,
  setDescripcion,
  onSubmit,
  onCancel,
  titulo = "Formulario",
}) => {


  const [error, setError] = useState("");

  const handleSubmit = (e) => {
    e.preventDefault();

    // Validación básica
    if (!descripcion.trim()) {
      setError("La descripción es obligatoria.");
      return;
    }

    // Limpia el error y llama a `onSubmit`
    setError("");
  // const handleSubmit = (e) => {
  //   e.preventDefault();

  //   // Validación básica
  //   if (!descripcion.trim()) {
  //     Swal.fire({
  //       title: "Error de Envío",
  //       text: "La descripción es obligatoria.",
  //       icon: "error",
  //     });
  //     return;
  //   }

    // Si pasa la validación, llama a `onSubmit`
    onSubmit(e);
  };

  return (
    <div className="fixed inset-0 bg-gray-800 bg-opacity-50 flex justify-center items-center z-50">
      <div className="bg-white p-6 rounded-lg shadow-md w-1/3">
        <h2 className="text-2xl font-bold mb-4">{titulo}</h2>
        <form onSubmit={handleSubmit}>
          <div className="mb-4">
            <label className="block text-gray-700 font-medium mb-2">
              Descripción:
            </label>
            <input
              type="text"
              value={descripcion}
              onChange={(e) => setDescripcion(e.target.value)}
              className="w-full px-4 py-2 border border-gray-300 rounded focus:outline-none focus:ring
               focus:ring-blue-300"
            />
             {error && (
              <p className="text-red-500 text-sm mt-2">{error}</p>
            )}
          </div>
          <div className="flex space-x-4">
            <button
              type="submit"
              className="rounded-md py-2 px-4 border-2 border-blue-500 text-blue-500 hover:bg-blue-500
               hover:text-gray-100 focus:outline-none">
               Guardar
            </button>
            <button
              type="button"
              onClick={onCancel}
              className="rounded-md py-2 px-4 border-2 border-gray-600 text-gray-600 hover:bg-gray-600
               hover:text-gray-100 focus:outline-none">
              Cancelar
            </button>
          </div>
        </form>
      </div>
    </div>
  );
};

export default FormTipo;

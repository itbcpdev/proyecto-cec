<?php

namespace App\Http\Requests\Administrador;

use Illuminate\Foundation\Http\FormRequest;

class UsuarioEmpresaStoreRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'email' => 'required|email|unique:users,email',
            'password' => 'required',
            'tipo_de_cargo_id' => 'required',
            'empresa_id' => 'required'
        ];
    }

    public function messages()
    {
        return [
            'email.required' => 'El Correo es un campo requerido',
            'email.email' => 'El formato ingresado no es un Correo valido',
            'password.required' => 'La Contraseña es un campo requerido',
            'tipo_de_cargo_id.required' => 'El tipo de Cargo es requerido',
            'empresa_id.required' => 'La Empresa es requerido',
            'email.unique' => 'El Correo ya se encuentra registrado'
        ];
    }
}

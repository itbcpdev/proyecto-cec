<?php

namespace App\Http\Requests\Administrador;

use Illuminate\Foundation\Http\FormRequest;

class UsuarioEmpresaUpdateRequest extends FormRequest
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
            'email' => 'required|email|unique:users,email,'.request()->route('id'),
            'tipo_de_cargo_id' => 'required'
        ];
    }

    public function messages()
    {
        return [
            'email.required' => 'El Correo es un campo requerido',
            'email.email' => 'El formato ingresado no es un Correo valido',
            'email.unique' => 'El email ingresado ya existe',
            'tipo_de_cargo_id.required' => 'El tipo de cargo es requerido'
        ];
    }
}

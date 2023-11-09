<?php

namespace App\Http\Requests\Empresa;

use Illuminate\Foundation\Http\FormRequest;

class EmpresaStoreRequest extends FormRequest
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
        // 'video_empresa' => 'regex:/^.*watch\?v=.*$/'
        return [
            'nombre' => 'required',
            'img_flyer' => 'mimes:jpg,png|max:2000',
            'sector_id' => 'required',
            'video_empresa' => 'nullable|regex:/^.*watch\?v=.*$/'
        ];
    }

    public function messages()
    {
        return [
            'img_flyer.mimes' => 'La extensión de la imagen debe ser .jpg, .jpeg, .png',
            'img_flyer.max' => 'El peso maximo de la imagen debe ser 2MB',
            'sector_id.required' => 'El sector es requerido',
            'video_empresa.regex' => 'El formato del video ingresado no es aceptable'
         ];
    }
}

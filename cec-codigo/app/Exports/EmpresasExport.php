<?php 

namespace App\Exports;


use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithColumnWidths;

class EmpresasExport implements FromCollection, WithHeadings, WithColumnWidths
{
    protected $empresas;

    public function __construct($empresas)
    {
        $this->empresas = $empresas;
    }

    public function collection()
    {
      $data = [];
        
      foreach ($this->empresas as $empresa) {
          if($empresa->usuarios->isEmpty()) {
            $data[] = [
                'Nombre' => $empresa->nombre,
                'RUC' => $empresa->ruc,
                'Descripción de Empresa' => $empresa->descripcion_empresa,
                'Link de Video' => $empresa->video,
                'Pagina Web' => $empresa->direccion,
                'Número de Empresa' => $empresa->numero_contactos,
                'Correo de Empresa' => $empresa->correo,
                'Nombre Contacto' => '',
                'Correo de Contacto' => '',
                'Cargo Contacto' => '',
                'Celular Contacto' => '',
                'Numero Fijo Contacto' => '',
                'Fecha Nacimiento Contacto' => '',
                'Tipo de Cargo Contacto' => '',
                'Descripción de Campaña' => $empresa->descripcion_campania,
            ];
          } else {
            foreach ($empresa->usuarios as $usuario) {
                $data[] = [
                    'Nombre' => $empresa->nombre,
                    'RUC' => $empresa->ruc,
                    'Descripción de Empresa' => $empresa->descripcion_empresa,
                    'Link de Video' => $empresa->video,
                    'Pagina Web' => $empresa->direccion,
                    'Número de Empresa' => $empresa->numero_contactos,
                    'Correo de Empresa' => $empresa->correo,
                    'Nombre Contacto' => $usuario->name . " " . $usuario->apellido_paterno . " " . $usuario->apellido_materno,
                    'Correo de Contacto' => $usuario->email,
                    'Cargo Contacto' => $usuario->cargo,
                    'Celular Contacto' => $usuario->celular_contacto,
                    'Numero Fijo Contacto' => $usuario->numero_fijo,
                    'Fecha Nacimiento Contacto' => $usuario->fecha_nac,
                    'Tipo de Cargo Contacto' => $usuario->tipocargo->nombre ?? '',
                    'Descripción de Campaña' => $empresa->descripcion_campania,
                ];
            }
          }
      }
      
  
      return collect($data);
    }

    public function headings(): array
    {
        return [
            'Nombre',
            'RUC',
            'Descripción de Empresa',
            'Link de Video',
            'Pagina Web',
            'Número de Empresa',
            'Correo de Empresa',
            'Nombre Contacto',
            'Correo de Contacto',
            'Cargo Contacto',
            'Celular Contacto',
            'Numero Fijo Contacto',
            'Fecha Nacimiento Contacto',
            'Tipo de Cargo Contacto',
            'Descripción de Campaña',
        ];
    }

    public function columnWidths(): array
    {
        return [
            'A' => 50, // Ancho columna Nombre
            'B' => 20, // Ancho columna RUC
            'C' => 120, // Ancho columna Descripción de Empresa
            'D' => 80, // Ancho columna Link de Video
            'E' => 70, // Ancho columna Dirección
            'F' => 18, // Ancho columna Número de Empresa
            'G' => 20, // Ancho columna Correo de Empresa
            'H' => 20, // Ancho columna Nombre Contacto
            'I' => 20, // Ancho columna Correo de Contacto
            'J' => 20, // Ancho columna Cargo Contacto
            'K' => 18, // Ancho columna Celular Contacto
            'L' => 18, // Ancho columna Numero Fijo Contacto
            'M' => 18, // Ancho columna Fecha Nacimiento Contacto
            'N' => 18, // Ancho columna Tipo de Cargo Contacto
            'O' => 70, // Ancho columna Descripción de Campaña
        ];
    }
}
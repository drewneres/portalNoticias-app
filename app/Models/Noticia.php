<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Storage;

class Noticia extends Model
{
    use HasFactory;

    protected $fillable = [
        'titulo',
        'descricao',
        'url',
    ];

    public function storeArquivo($arquivo)
    {
        if($arquivo) {
            $path = $arquivo->store('arquivos', 'public');//caminho onde o arquivo será salvo
            $this->url = Storage::url($path); //caminho completo para acessar o arquivo
            $this->save();//salva o caminho no banco de dados
        }

    }
}
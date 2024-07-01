@include('layouts.navigation')
<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white dark:bg-gray-800 overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900 dark:text-gray-100">
                    {{ __("You're logged in!") }}
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <h1>Noticias</h1>
        <a href="{{ route('noticias.create') }}" class="btn btn-primary">Criar Noticia</a>
        @if ($message = Session::get('success'))
            <div class="alert alert-success mt-2">
                <p>{{ $message }}</p>
            </div>
        @endif

        <table class="table mt-2">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Titulo</th>
                    <th>Descrição</th>
                    <th>URL</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($noticias as $noticia)
                    <tr>
                        <td>{{ $noticia->id }}</td>
                        <td>{{ $noticia->titulo }}</td>
                        <td>{{ $noticia->descricao }}</td>
                        <td>
                           @foreach ($noticias as $noticia)
                           <tr>
                            <td>{{ $noticia->id }}</td>
                            <td>{{ $noticia->titulo }}</td>
                            <td>{{ $noticia->descricao }}</td>
                            <td><a href="{{ noticia->url }}" target="_blank">{{ $noticia->url }}</a></td>
                            <td>
                                <form action="{{ route('noticias.destroy', $noticia->id) }}" method="post">
                                    <a class="btn btn-info" href="{{ route('noticias.show', $noticia->id) }}">Visualizar</a>
                                    <a class="btn btn-primary" href="{{ route('noticias.edit', $noticia->id) }}">Editar</a>
                                    @csrf
                                    @method('DELETE')
                                    <button type="submit" class="btn btn-danger">Deletar</button>
                                </form>
                            </td>
                        </tr>
                @endforeach
            </tbody>
        </table>

</x-app-layout>

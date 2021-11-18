@extends('layouts.main')

@section('container')

<h1 class="mb-3 text-center">{{ $title }}</h1>

{{-- pencarian --}}
<div class="row justify-content-center mb-3">
    <div class="col-md-6">
        <form action="/posts">

            {{-- kirim req dari category --}}
            @if (request('category'))
                <input type="hidden" name="category" value="{{ request('category') }}">
            @endif

            {{-- kirim req dari author --}}
            @if (request('author'))   
            <input type="hidden" name="author" value="{{ request('author') }}">
            @endif
            

            <div class="input-group mb-3">
                <input type="text" class="form-control" placeholder="Search.." name="search" value="{{ request('search') }}">
                <button class="btn btn-danger" type="submit">Search</button>
            </div>
        </form>
    </div>
</div>

{{-- menampilkan notif jika belum ada postingan --}}
@if ($posts->count())
    <div class="card mb-3">
                @if ($posts[0]->image)
                    <div style="max-height: 400px; overflow: hidden;">
                        <img src="{{ asset('storage/' . $posts[0]->image) }}" class="card-img-top" alt="{{ $posts[0]->category->name  }}">
                    </div>
                @else
                    <img src="https://source.unsplash.com/1200x400?{{ $posts[0]->category->name }}" class="card-img-top" alt="{{ $posts[0]->category->name  }}">
                @endif

        
        <div class="card-body text-center">
            <h5 class="card-title"><a href="/posts/{{ $posts[0]->slug }}" class="text-decoration-none text-dark">{{ $posts[0]->title }}</a></h5>
            <p>
                <small class="text-muted">
                    By <a href="/posts?author={{ $posts[0]->author->username }}" class="text-decoration-none">{{ $posts[0]->author->name }}</a> in <a href="/posts?category={{ $posts[0]->category->slug }}" class="text-decoration-none">{{ $posts[0]->category->name }}</a> {{ $posts[0]->created_at->diffForHumans() }}
                </small>
            </p>
            <p class="card-text">{{ $posts[0]->exerpt }}</p>
            <a href="/posts/{{ $posts[0]->slug }}" class="text-decoration-none btn btn-primary">Read more</a>
        </div>
    </div>


    <div class="container">
        <div class="row">

            @foreach ($posts->skip(1) as $post)
                <div class="col-md-4 mb-5">
                    <div class="card" >
                        <div class="position-absolute px-3 py-2 " style="background-color: rgb(0, 0, 0, 0.7)"><a href="/posts?category={{ $post->category->slug }}" class="text-white text-decoration-none">{{ $post->category->name }}</a></div>
                        @if ($post->image)
                            <img src="{{ asset('storage/' . $post->image) }}" class="card-img-top" alt="{{ $post->category->name  }}">
                        @else
                            <img src="https://source.unsplash.com/500x400?{{ $post->category->name }}" class="card-img-top" alt="{{ $post->category->name  }}">
                        @endif

                        
                        <div class="card-body">
                            <h5 class="card-title"><a href="/posts/{{ $post->slug }}" class="text-decoration-none">{{ $post->title }}</a></h5>
                            <p>
                                <small class="text-muted">
                                    By <a href="/posts?author={{ $post->author->username }}" class="text-decoration-none">{{ $post->author->name }}</a> {{ $post->created_at->diffForHumans() }}
                                </small>
                            </p>
                            <p class="card-text">{{ $post->exerpt }}</p>
                            <a href="/posts/{{ $post->slug }}" class="btn btn-primary">Read more</a>
                        </div>
                    </div>
                </div>    
            @endforeach

        </div>
    </div>

@else
    <p class="text-center fs-4">No post found</p>
@endif

<div class="d-flex justify-content-end">
    {{ $posts->links() }}
</div>

@endsection

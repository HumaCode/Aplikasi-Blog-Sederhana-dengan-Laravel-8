<?php

namespace App\Models;

class Post
{
    private static $blog_posts = [
        [
            "title" => "Judul Post Pertama",
            "slug" => "judul-post-pertama",
            "author" => "Humaidi Zakaria",
            "body" => "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto, vel qui cum quas eaque illo ullam, atque consequatur, sed officia nihil est veritatis commodi odit? Voluptates mollitia impedit doloremque, non voluptatum dolor dolores? Neque quisquam, voluptatem nulla culpa fugit ducimus dolorum sunt illo illum ullam quo laborum facere vel tempora consequatur. Nesciunt blanditiis et impedit iure dignissimos ipsam necessitatibus hic error repellendus quia reprehenderit quos molestias deserunt facere sit ducimus nisi excepturi non, itaque architecto laudantium? Aperiam quas nobis saepe."
        ],
        [
            "title" => "Judul Post Kedua",
            "slug" => "judul-post-kedua",
            "author" => "HumaCode",
            "body" => "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Assumenda maxime omnis eaque laboriosam facere. Modi in reiciendis ipsa nihil repellat, nobis eaque dolore nesciunt ex nostrum deleniti facere architecto soluta et error magnam corrupti unde, atque deserunt totam, voluptatibus nulla voluptate. Modi laboriosam id blanditiis commodi repudiandae quas rem est quae nihil consequuntur aut quasi accusantium perspiciatis, odit culpa, praesentium veniam unde nam dolores architecto nobis alias. Rem, aperiam magni?"
        ],
    ];

    public static function all()
    {
        return collect(self::$blog_posts);
    }

    public static function find($slug)
    {
        $posts = static::all(); // mengambil method static all()
        return $posts->firstWhere('slug', $slug);
    }
}

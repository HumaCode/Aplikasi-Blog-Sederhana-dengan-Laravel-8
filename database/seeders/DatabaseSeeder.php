<?php

namespace Database\Seeders;

use App\Models\Category;
use App\Models\Post;
use App\Models\User;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {


        // membuat seeder manual
        User::create([
            'name' => 'Humaidi Zakaria',
            'username' => 'humaidi',
            'email' => 'amirzakaria98@gmail.com',
            'password' => bcrypt('12345')
        ]);

        // User::create([
        //     'name' => 'Anonimus',
        //     'email' => 'anonimus@gmail.com',
        //     'password' => bcrypt('12345')
        // ]);

        // seeder otomatis menggunakan fake data
        User::factory(3)->create();

        Category::create([
            'name' => 'Web Programing',
            'slug' => 'web-programing'
        ]);

        Category::create([
            'name' => 'Web Design',
            'slug' => 'web-design'
        ]);

        Category::create([
            'name' => 'Personal',
            'slug' => 'personal'
        ]);

        Post::factory(20)->create();

        // Post::create([
        //     'title' => 'Judul Post Pertama',
        //     'slug' => 'judul-post-pertama',
        //     'exerpt' => 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Rem quidem ex et iusto molestias repudiandae veritatis laudantium aut optio necessitatibus.',
        //     'body' => '<p> Lorem, ipsum dolor sit amet consectetur adipisicing elit. Rem quidem ex et iusto molestias repudiandae veritatis laudantium aut optio necessitatibus.</p><p> Obcaecati eaque aut, asperiores at ducimus quisquam quia voluptatum minus voluptatem iusto dolorum assumenda rerum et maiores reprehenderit cupiditate quod ipsa est error praesentium delectus! Quisquam vitae debitis tenetur asperiores id maxime perferendis beatae quibusdam,</p><p> quaerat nesciunt nostrum magnam ex placeat eaque saepe consectetur, reprehenderit ipsam unde, corrupti dolorem explicabo commodi qui recusandae voluptas! Aliquam distinctio, ex blanditiis est modi ipsam vero id dicta suscipit officia ea facere sit inventore harum sequi eaque enim in magnam iusto error eos reprehenderit!</p>',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Post Kedua',
        //     'slug' => 'judul-post-kedua',
        //     'exerpt' => 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Nihil excepturi modi quis voluptas ad quisquam perferendis minima aperiam doloremque dolorum! Ipsam, assumenda eligendi aut, id itaque nihil tempora error nam, voluptas nesciunt illo blanditiis placeat quos vel sequi esse eveniet commodi debitis accusantium repellendus maxime.',
        //     'body' => '<p> Lorem, ipsum dolor sit amet consectetur adipisicing elit. Nihil excepturi modi quis voluptas ad quisquam perferendis minima aperiam doloremque dolorum! Ipsam, assumenda eligendi aut, id itaque nihil tempora error nam, voluptas nesciunt illo blanditiis placeat quos vel sequi esse eveniet commodi debitis accusantium repellendus maxime. Repellat porro beatae aperiam voluptatem, deleniti neque velit ducimus sit quidem provident recusandae quisquam temporibus quos ratione vitae nostrum reiciendis minus ea, atque ipsum eum aliquid quam? Quae placeat necessitatibus esse aliquam tempora hic quas fugiat cum earum aperiam! Aliquam quia molestiae id quaerat, vitae perferendis esse nulla suscipit laudantium exercitationem, assumenda ut molestias placeat dignissimos fugit.</p><p> Non eveniet quibusdam accusamus fugit quis, omnis beatae, velit sint esse magnam tempore optio amet enim architecto pariatur facere, aspernatur labore corporis tenetur molestias excepturi officia repellat eos. Officiis cumque enim excepturi possimus maxime nihil odio debitis atque unde voluptates, nisi modi et ipsa quidem tempora adipisci reprehenderit?</p>',
        //     'category_id' => 1,
        //     'user_id' => 2
        // ]);

        // Post::create([
        //     'title' => 'Judul Post Ketiga',
        //     'slug' => 'judul-post-ketiga',
        //     'exerpt' => 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Nihil excepturi modi quis voluptas ad quisquam perferendis minima aperiam doloremque dolorum! Ipsam, assumenda eligendi aut, id itaque nihil tempora error nam, voluptas nesciunt illo blanditiis placeat quos vel sequi esse eveniet commodi debitis accusantium repellendus maxime.',
        //     'body' => '<p> Lorem, ipsum dolor sit amet consectetur adipisicing elit. Nihil excepturi modi quis voluptas ad quisquam perferendis minima aperiam doloremque dolorum! Ipsam, assumenda eligendi aut, id itaque nihil tempora error nam, voluptas nesciunt illo blanditiis placeat quos vel sequi esse eveniet commodi debitis accusantium repellendus maxime. Repellat porro beatae aperiam voluptatem, deleniti neque velit ducimus sit quidem provident recusandae quisquam temporibus quos ratione vitae nostrum reiciendis minus ea, atque ipsum eum aliquid quam? Quae placeat necessitatibus esse aliquam tempora hic quas fugiat cum earum aperiam! Aliquam quia molestiae id quaerat, vitae perferendis esse nulla suscipit laudantium exercitationem, assumenda ut molestias placeat dignissimos fugit.</p>',
        //     'category_id' => 2,
        //     'user_id' => 1
        // ]);
    }
}

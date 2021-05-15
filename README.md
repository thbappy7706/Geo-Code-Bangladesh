# Geo-Code-Bangladesh
Division, District and Upazila level fully mapped Dataset in SQL, CSV, JSON, XML, and PHP format. 



## To seed in db:

<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        DB::unprepared(File::get(__DIR__.'/data/db_geocode.sql'));
    }
}

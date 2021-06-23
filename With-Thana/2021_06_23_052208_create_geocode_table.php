<?php

use App\Models\Geocode\District;
use App\Models\Geocode\Division;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateGeocodeTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('divisions', function (Blueprint $table) {
            $table->id();
            $table->string('name')->nullable();
            $table->string('bn_name')->nullable();
            $table->decimal('latitude',18,14)->nullable();
            $table->decimal('longitude',18,14)->nullable();
            $table->string('website')->nullable();
            $table->boolean('status')->nullable()->default(true);
            $table->timestamps();
        });

        Schema::create('districts', function (Blueprint $table) {
            $table->id();
            $table->foreignIdFor(Division::class,'division_id')->nullable()->constrained((new Division())->getTable());
            $table->string('name')->nullable();
            $table->string('bn_name')->nullable();
            $table->decimal('latitude',18,14)->nullable();
            $table->decimal('longitude',18,14)->nullable();
            $table->string('website')->nullable();
            $table->boolean('status')->nullable()->default(true);
            $table->timestamps();
        });

        Schema::create('upazilas', function (Blueprint $table) {
            $table->id();
            $table->foreignIdFor(District::class,'district_id')->nullable()->constrained((new District())->getTable());
            $table->string('name')->nullable();
            $table->string('bn_name')->nullable();
            $table->decimal('latitude',18,14)->nullable();
            $table->decimal('longitude',18,14)->nullable();
            $table->string('website')->nullable();
            $table->boolean('status')->nullable()->default(true);
            $table->timestamps();
        });

        Schema::create('thanas', function (Blueprint $table) {
            $table->id();
            $table->foreignIdFor(Division::class,'division_id')->nullable()->constrained((new Division())->getTable());
            $table->foreignIdFor(District::class,'district_id')->nullable()->constrained((new District())->getTable());
            $table->string('name')->nullable();
            $table->string('bn_name')->nullable();
            $table->string('division_name')->nullable();
            $table->string('district_name')->nullable();
            $table->string('upazila_name')->nullable();
            $table->string('union_name')->nullable();
            $table->decimal('latitude',18,14)->nullable();
            $table->decimal('longitude',18,14)->nullable();
            $table->string('website')->nullable();
            $table->boolean('status')->nullable()->default(true);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('divisions');
        Schema::dropIfExists('districts');
        Schema::dropIfExists('upazilas');
        Schema::dropIfExists('thanas');
    }
}

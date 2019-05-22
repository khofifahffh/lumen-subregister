<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRegisterTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->increments('id');
            $table->string('nama_dpn');
            $table->string('nama_blk');
            $table->string('email')->unique();
            $table->string('password');
            $table->string('status');
            $table->string('api_token'); //dijadkan kunci untuk mengakses beberapa route middleware, untuk otentikasi, menggantikan session
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
        Schema::dropIfExists('register');
    }
}

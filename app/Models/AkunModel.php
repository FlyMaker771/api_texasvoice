<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Laravel\Sanctum\HasApiTokens;

class AkunModel extends Model
{
    use HasFactory, HasApiTokens;
    protected $table = 'akun';
    protected $primaryKey  = 'id_akun';
    protected $fillable  = [
        'nis', 'nama', 'tingkat', 'kelas', 'username', 'password', 'status', 'max_time', 'role'
    ];

    public $timestamps = false;
}

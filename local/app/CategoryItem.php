<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CategoryItem extends Model
{
    protected $fillable = [
        'id','name','path','description','image','image_mobile','level','parent_id','type','seo_title','seo_description','seo_keywords','order','isActive','created_at','updated_at'
    ];
    protected $table = 'category_items';
    protected $hidden = ['id'];
    public function posts(){
        return $this->belongsToMany('App\Post','category_many','category_id','item_id')->withTimestamps();
    }
}

<?php

namespace App\Repositories\Menu;

use App\CategoryItem;
use App\CategoryPost;
use App\Menu;
use App\Post;
use App\Repositories\EloquentRepository;

class MenuRepository extends EloquentRepository implements MenuRepositoryInterface
{
    public function getAllMenuTree()
    {
        $menus = Menu::orderBy('order')->get(['id', 'name','order', 'type', 'isActive', 'content_id', 'parent_id', 'level']);
        $children = array();
        foreach ($menus as $key => $data) {
            $data['children'] = $children;
            $data['text'] = $data->name;
            if ($data->type == 1) {
                if ($data->content_id != 0) {
                    $page = Post::where('id', $data->content_id)->first();
                    $data['url'] = $page->path;
                } else {
                    $data['url'] = '#';
                }
            }else if($data->type == 2){
                $categoryPost=CategoryPost::where('id', $data->content_id)->first();
                $data['url'] = 'danh-muc/'.$categoryPost->path;
            }
            unset($data->name);
        }
        $newArray = array();
        self::findChildMenu($menus, 0, $newArray);
        $newArray = array_reverse($newArray);
        foreach ($newArray as $key => $data) {
            if ($data->level == 0)
                continue;
            foreach ($newArray as $key2 => $data2) {
                if ($data2->id == $data->parent_id) {
                    $temp = array($data);
                    $data2->children = array_merge($data2->children, $temp);
                    break;
                }
            }
            unset($newArray[$key]);
        }
        $newArray = array_reverse($newArray);
        return $newArray;
    }

    public function getModel()
    {
        return Menu::class;
    }

    public function findChildMenu($menus, $parent_id = 0, &$newArray)
    {
        foreach ($menus as $key => $data) {
            if ($data->parent_id == $parent_id) {
                array_push($newArray, $data);
                $menus->forget($key);
                self::findChildMenu($menus, $data->id, $newArray);
            }
        }
    }

    public function loadMenuIndex()
    {
        $pages = Post::where('post_type', 1)->where('isActive', 1)->get(['id', 'title']);
        $category_posts = CategoryPost::orderBy('order')->get(['id', 'name']);
        return view('backend.admin.menu.index', compact('pages', 'category_posts'));
    }

    public function create(array $attributes)
    {
        return parent::create($attributes); // TODO: Change the autogenerated stub
    }

    public function createNewMenu($request)
    {
        $data = array();
        $name = $request->input('name');
        $isActive = $request->input('menu_is_active');
        $typeStateMenu = $request->input('type_state_menu');
        $categoryId = $request->input('category_id');
        $pageId = $request->input('page_id');
        $stateMenuCategory = $request->input('state_menu_category');
        $order = $request->input('order');
        $parentId = $request->input('parentId');
        $level = $request->input('level');
        if ($order) {
            $data['order'] = $order;
        } else {
            $data['order'] = 1;
        }
        if ($typeStateMenu == 1) {
            if ($stateMenuCategory) {
                $data['content_id'] = $categoryId;
                $data['type'] = 2;
            } else {
                $data['content_id'] = $pageId;
                $data['type'] = 1;
            }
        }
        if ($isActive) {
            $data['isActive'] = 1;
        } else {
            $data['isActive'] = 0;
        }
        if ($parentId) {
            $data['parent_id'] = $parentId;
            $data['level'] = (int)$level + 1;
        } else {
            $data['parent_id'] = null;
            $data['level'] = 0;
        }
        $data['name'] = $name;
        $data['path'] = chuyen_chuoi_thanh_path($name);

        return parent::create($data);
    }

    public function updateMenu($request, $id)
    {
        $data = array();
        $name = $request->input('name');
        $isActive = $request->input('menu_is_active');
        $typeStateMenu = $request->input('type_state_menu');
        $categoryId = $request->input('category_id');
        $pageId = $request->input('page_id');
        $stateMenuCategory = $request->input('state_menu_category');
        $order = $request->input('order');
        if ($order) {
            $data['order'] = $order;
        } else {
            $data['order'] = 1;
        }
        if ($typeStateMenu == 1) {
            if ($stateMenuCategory) {
                $data['content_id'] = $categoryId;
                $data['type'] = 2;
            } else {
                $data['content_id'] = $pageId;
                $data['type'] = 1;
            }
        }
        if ($isActive) {
            $data['isActive'] = 1;
        } else {
            $data['isActive'] = 0;
        }
        $data['name'] = $name;
        $data['path'] = chuyen_chuoi_thanh_path($name);
        return parent::update($id, $data);
    }

    public function findMenuById($id)
    {
        return parent::find($id);
    }

    public function updateNodeFamily($id, $parentId)
    {
        $data = array();
        if ($parentId == 0) {
            $data['parent_id'] = null;
            $data['level'] = 0;
        } else {
            $data['parent_id'] = $parentId;
            $parentMenu = parent::find($parentId);
            $data['level'] = (int)$parentMenu->level + 1;
        }
        return parent::update($id, $data);
    }

    public function updateMenuChildDelete(&$listMenu, $menu)
    {
        foreach ($listMenu as $key => $data) {
            if ($menu->id == $data->parent_id) {
                $data->level = 0;
                $data->parent_id = null;
                $data->save();
                self::updateMenuChildDelete($listMenu, $data);
            }
        }
    }

    public function deleteMenu($id)
    {
        $listMenu = parent::getAll();
        $menu = parent::find($id);
        self::updateMenuChildDelete($listMenu, $menu);
        parent::delete($id);
    }

    public function showMenu()
    {
        $listMenu = self::getAllMenuTree();
        foreach ($listMenu as $key => $data) {

        }
    }
    public function getFrontendMenu()
    {
        $data = [];
        $categoryMain = CategoryItem::where('level', MENU_GOC)->where('type', CATEGORY_POST)->get();
        foreach ($categoryMain as $key=>$data){
            $categorySub=CategoryItem::where('level',MENU_CAP_1)->where('parent_id',$data->id)->get();
            $data->categorySub=$categorySub;
        }
        $data['categoryMain'] = $categoryMain;
        return $data;
    }


}
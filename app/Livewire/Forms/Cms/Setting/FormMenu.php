<?php

namespace App\Livewire\Forms\Cms\Setting;

use App\Models\Menu;
use Livewire\Attributes\Validate;
use Livewire\Form;

class FormMenu extends Form
{
    #[Validate('nullable|numeric')]
    public $id = '';

    #[Validate('nullable|numeric')]
    public $parent_id = null;

    #[Validate('required')]
    public $name = '';

    #[Validate('required')]
    public $on = '';

    #[Validate('required')]
    public $type = '';

    #[Validate('required')]
    public $icon = '';

    #[Validate('required')]
    public $route = '';

    #[Validate('required|numeric')]
    public $ordering = 0;

    // Get the data
    public function getDetail($id) {
        $data = Menu::find($id);

        $this->id = $id;
        $this->parent_id = $data->parent_id;
        $this->name = $data->name;
        $this->on = $data->on;
        $this->type = $data->type;
        $this->icon = $data->icon;
        $this->route = $data->route;
        $this->ordering = $data->ordering;
    }

    // Save the data
    public function save() {
        $this->validate();

        if ($this->id) {
            $this->update();
        } else {
            $this->store();
        }

        $this->reset();
    }

    // Store data
    public function store() {
        Menu::create($this->only([
            'parent_id',
            'name',
            'on',
            'type',
            'icon',
            'route',
            'ordering',
        ]));
    }

    // Update data
    public function update() {
        Menu::find($this->id)->update($this->all());
    }

    // Delete data
    public function delete($id) {
        Menu::find($id)->delete();
    }
}
<?php

namespace Application\Controllers;

use Application\Models\User;
use Phalcon\Mvc\Dispatcher;

class UserController extends ControllerBase
{
    public function indexAction()
    {
        $this->view->users = User::find();
    }

    public function createAction()
    {

    }

    public function storeAction()
    {
        $user = new User();
        $user->name = $this->request->getPost("name");
        $user->email = $this->request->getPost("email");

        if (!$user->save()) {
            echo "Gagal Disimpan";
        } else {
            echo "Berhasil Disimpan";
        }

        $this->view->disable();
        $this->redirect('/');
    }

    public function showAction()
    {
        $id = $this->dispatcher->getParam('id');
        $user = User::findFirstByid($id);

        $this->view->name = $user->name;
        $this->view->email = $user->email;
    }

    public function editAction()
    {
        $id = $this->dispatcher->getParam('id');
        $user = User::findFirstByid($id);

        $this->view->id = $user->id;
        $this->view->name = $user->name;
        $this->view->email = $user->email;
    }

    public function updateAction()
    {
        $id = $this->request->getPost("id");
        $user = User::findFirstByid($id);

        $user->name = $this->request->getPost("name");
        $user->email = $this->request->getPost("email");

        if (!$user->save()) {
            echo "Gagal Disimpan";
        } else {
            echo "Berhasil Disimpan";
        }

        $this->view->disable();
        $this->redirect('/');
    }

    public function deleteAction()
    {
        $id = $this->dispatcher->getParam('id');
        $user = User::findFirstByid($id);

        if (!$user->delete()) {
            echo "Gagal Hapus Data";
        } else {
            echo "Berhasil Hapus Data";
        }

        $this->view->disable();
        $this->redirect('/');
    }
}

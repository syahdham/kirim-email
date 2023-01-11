<?php
/**
 * Created by PhpStorm.
 * User: gamalan
 * Date: 07/10/16
 * Time: 10:24
 */

namespace Application\Router;

use Phalcon\Mvc\Router\Group;

class MainRouter extends Group
{
    public function initialize()
    {
        $this->setPaths([
            'namespaces' => 'Application\\Controllers',
            'controller'=>'user'
        ]);

        $this->add('/', ['action' => 'index']);
        $this->add('/user/create',['action' => 'create']);
        $this->add('/user/store',['action' => 'store']);
        $this->add('/user/show/{id}',['action' => 'show']);
        $this->add('/user/edit/{id}',['action' => 'edit']);
        $this->add('/user/update',['action' => 'update']);
        $this->add('/user/delete/{id}',['action' => 'delete']);
    }
}

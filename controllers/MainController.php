<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace app\controllers;
 use Yii;
use app\models\Product;
use app\models\SearchProduct;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
 
class MainController extends Controller
{
    public $defaultAction = 'home';
 
    public function actionHome()
    {
        
        $this->layout = 'jdshop-user';
        //$this->layout = 'lumino-admin';
        
        $searchModel = new SearchProduct();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('shopper', [
        	'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
        //return $this->render('index');
    }
}
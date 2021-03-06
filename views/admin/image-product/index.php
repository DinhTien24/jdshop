<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\SearchImageProduct */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Image Products';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="image-product-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Image Product', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            //'id',
            //'link',
            //'id_product',
            'attribute'=>'product.name',
            [
                'label' => 'Hình ảnh',
                'format'=>['image',['width' => '100', 'height' => '100']],
                'value' => function ($model) {
                        return '../../images/product-images'.'/'.$model->link;
                },
            ],

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>

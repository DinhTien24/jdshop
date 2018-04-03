<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\DiscountProduct */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Discount Products', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="discount-product-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'info',
            'type',
            'discount',
            'status',
            'created_date',
            'begin_date',
            'end_date',
            'created_uid',
        ],
    ]) ?>

</div>
